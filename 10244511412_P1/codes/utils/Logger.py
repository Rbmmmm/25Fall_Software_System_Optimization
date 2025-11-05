import datetime
import os

class Logger:
    def __init__(self, name="Autotuner", log_dir=None):
        """
        初始化日志系统
        ------------------------------------------------
        参数：
            name    : 模块名（默认 "Autotuner"）
            log_dir : 日志保存目录（如 results/GridSearch/20251103_1130/）
        """
        self.name = name
        self.log_dir = log_dir
        self.log_file = None

        # 如果指定了日志目录，就创建对应文件并开启文件写入
        if log_dir:
            os.makedirs(log_dir, exist_ok=True)
            self.log_file = os.path.join(log_dir, "log.txt")
            with open(self.log_file, "w") as f:
                f.write(f"=== Log started for {name} ===\n")

    def log(self, msg):
        """打印日志（控制台 + 文件）"""
        time_str = datetime.datetime.now().strftime("%H:%M:%S")
        formatted = f"[{self.name} {time_str}] {msg}"

        # 控制台输出
        print(formatted)

        # 写入文件
        if self.log_file:
            with open(self.log_file, "a") as f:
                f.write(formatted + "\n")
