import math
import random
import copy


class SimulatedAnnealing:
    """
    SimulatedAnnealing 模拟退火算法
    ------------------------------------------------
    特点：
        1. 属于动态搜索算法（支持 next_config() / stop() 接口）；
        2. 能跳出局部最优，通过温度衰减控制搜索范围；
        3. 与 Database 结合，可根据历史结果调整搜索方向。
    """

    def __init__(self, params, initial_temp=100.0, cooling_rate=0.9, stop_temp=1.0, max_iter=100):
        self.params = params
        self.param_keys = list(params.keys())
        self.current_config = self.random_config()
        self.best_config = self.current_config
        self.best_result = float("inf")

        # 温度控制参数
        self.temp = initial_temp
        self.cooling_rate = cooling_rate
        self.stop_temp = stop_temp
        self.max_iter = max_iter
        self.iter_count = 0

    # ---------------------------------------------------------
    # 辅助函数
    # ---------------------------------------------------------
    def random_config(self):
        """随机生成一个配置"""
        return {k: random.choice(v) for k, v in self.params.items()}

    def neighbor_config(self, config):
        """在当前配置附近随机选取一个邻居"""
        new_config = copy.deepcopy(config)
        key = random.choice(self.param_keys)
        values = self.params[key]
        new_config[key] = random.choice(values)
        return new_config

    # ---------------------------------------------------------
    # 主接口（被 Autotuner 调用）
    # ---------------------------------------------------------
    def next_config(self, history=None):
        """
        根据当前温度与历史记录生成下一个待测配置
        ------------------------------------------------
        history: Database 提供的历史结果 {str(config): time}
        """
        if self.iter_count == 0:
            return self.current_config  # 首次运行当前配置

        # 选择邻居配置
        candidate = self.neighbor_config(self.current_config)

        # 如果历史已有记录，则跳过重复配置
        if history and str(candidate) in history:
            return self.random_config()

        return candidate

    def update(self, config, result):
        """根据本次结果更新当前状态与全局最优"""
        self.iter_count += 1

        if result < self.best_result:
            self.best_config = config
            self.best_result = result

        # 计算是否接受较差解（Metropolis 准则）
        delta = result - self.best_result
        prob = math.exp(-delta / self.temp) if delta > 0 else 1.0

        if random.random() < prob:
            self.current_config = config

        # 降温
        self.temp *= self.cooling_rate

    def stop(self):
        """判断是否终止"""
        return self.temp < self.stop_temp or self.iter_count >= self.max_iter
