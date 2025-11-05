import json
import os
from threading import Lock


class Database:
    """
    Database 模块
    ------------------------------------------------
    职责：
        1. 存储每个配置的运行结果；
        2. 提供查询接口（get_best, get_all）；
        3. 支持动态算法实时访问历史记录；
        4. 使用文件锁避免并行写冲突。
    """

    def __init__(self, db_path="results/summary/best_config.json"):
        self.db_path = db_path
        self.lock = Lock()
        os.makedirs(os.path.dirname(db_path), exist_ok=True)

        # 初始化数据库文件
        if not os.path.exists(db_path):
            with open(db_path, "w") as f:
                json.dump({"records": [], "best": {"config": None, "time": float("inf")}}, f, indent=4)

    # ---------------------------------------------------------
    # 基本操作
    # ---------------------------------------------------------
    def save(self, config, result):
        """保存一次测试结果"""
        with self.lock:
            data = self._read_db()

            # 记录新的测试结果
            record = {"config": config, "time": result}
            data["records"].append(record)

            # 更新最优解
            if result < data["best"]["time"]:
                data["best"] = {"config": config, "time": result}

            self._write_db(data)

    def get_best(self):
        """读取当前最优配置"""
        with self.lock:
            data = self._read_db()
            return data["best"]

    def get_all(self):
        """
        返回所有历史测试结果
        ------------------------------------------------
        用于动态算法的 next_config() 函数，
        让算法根据过去结果调整搜索方向。
        """
        with self.lock:
            data = self._read_db()
            # 转换成 {str(config): time} 格式方便查重与访问
            return {str(rec["config"]): rec["time"] for rec in data["records"]}

    # ---------------------------------------------------------
    # 内部函数
    # ---------------------------------------------------------
    def _read_db(self):
        """读取数据库文件"""
        with open(self.db_path, "r") as f:
            return json.load(f)

    def _write_db(self, data):
        """写入数据库文件"""
        with open(self.db_path, "w") as f:
            json.dump(data, f, indent=4)

    def add_summary(self, algorithm_name, total_runtime):
        """写入实验总结信息"""
        with self.lock:
            data = self._read_db()
            data["summary"] = {
                "algorithm": algorithm_name,
                "total_runtime_sec": round(total_runtime, 3)
            }
            self._write_db(data)

