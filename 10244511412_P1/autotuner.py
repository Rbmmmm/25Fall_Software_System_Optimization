import os
import argparse
import datetime
import time
from concurrent.futures import ProcessPoolExecutor, as_completed
from codes.input.InputDealer import InputDealer
from codes.search_algs.allAlgs import get_search_algorithm
from codes.runners.C_runner import CRunner
from codes.utils.Database import Database
from codes.utils.Logger import Logger


def evaluate(task):
    """
    单个调优任务执行函数（在子进程中运行）
    ------------------------------------------------
    输入：
        task: 三元组 (target_program, config, db_path)
    功能：
        1. 调用 Runner 编译并运行目标程序；
        2. 将运行结果写入数据库；
        3. 返回配置与结果。
    异常处理：
        如果运行出错（例如编译失败），返回无穷大时间。
    """
    target_program, config, db_path = task
    runner = CRunner(target_program)
    db = Database(db_path)
    try:
        result = runner.run(config)
        db.save(config, result)
        return config, result
    except Exception:
        return config, float("inf")


class Autotuner:
    """
    自动调优主控类
    ------------------------------------------------
    职责：
        1. 解析输入（目标程序、参数空间、搜索算法）；
        2. 自动识别算法类型（静态 / 动态 / 并行）；
        3. 调度对应模式；
        4. 并行或顺序执行任务；
        5. 输出最优配置与实验摘要。
    """

    def __init__(self, input_file="input.txt", max_workers=4, exp_name=None):
        # 解析输入文件
        self.inputDealer = InputDealer(input_file)
        self.target_program, self.params, self.algorithm_name = self.inputDealer.parse_input()

        # 生成实验目录（算法名 + 时间戳）
        timestamp = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
        exp_folder = exp_name if exp_name else f"{self.algorithm_name}_{timestamp}"
        self.exp_dir = os.path.join("results", self.algorithm_name, exp_folder)
        os.makedirs(self.exp_dir, exist_ok=True)

        # 初始化数据库和日志系统
        self.db_path = os.path.join(self.exp_dir, "best_config.json")
        self.db = Database(self.db_path)
        self.logger = Logger("Autotuner", log_dir=self.exp_dir)

        # 初始化搜索算法
        self.search_algorithm = get_search_algorithm(self.algorithm_name, self.params)
        self.max_workers = max_workers

        self.logger.log(f"Experiment initialized in {self.exp_dir}")

    def run(self):
        """
        主调优流程
        ------------------------------------------------
        根据算法类型自动选择执行模式：
        - 静态算法：一次性并行（Grid、Random）
        - 动态算法：循环反馈式（Greedy、HillClimb）
        - 并行算法：多算法协同（ParallelSearch）
        """
        self.logger.log("Starting autotuning process...")
        start_time = time.time()
        
        if hasattr(self.search_algorithm, "custom_run"):
            self.logger.log("Detected custom algorithm. Delegating execution to algorithm.")
            self.search_algorithm.custom_run(self.target_program, self.db, self.logger)

        elif hasattr(self.search_algorithm, "next_config"):
            self.logger.log("Detected dynamic search algorithm. Switching to iterative mode.")
            self.run_dynamic()

        else:
            self.logger.log("Detected static search algorithm. Using parallel batch mode.")
            self.run_static()
        
        best = {
                "config": self.search_algorithm.best_config,
                "time": self.search_algorithm.best_result
        }

        total_time = time.time() - start_time
        self.db.add_summary(self.algorithm_name, total_time)
        self.logger.log(f"Best Configuration: {best}")
        self.logger.log(f"Total runtime: {total_time:.2f}s")

        print("\n===== AUTOTUNING FINISHED =====")
        print("Best configuration:", best)
        print(f"Total runtime: {total_time:.2f}s")

    # ---------------------------------------------------------
    # 静态调优（一次性并行执行）
    # ---------------------------------------------------------
    def run_static(self):
        configs = self.search_algorithm.all_configs()
        tasks = [(self.target_program, config, self.db_path) for config in configs]

        with ProcessPoolExecutor(max_workers=self.max_workers) as executor:
            futures = [executor.submit(evaluate, task) for task in tasks]
            for future in as_completed(futures):
                config, result = future.result()
                self.logger.log(f"Finished: {config} -> {result:.6f}s")
                self.search_algorithm.update(config, result)

    # ---------------------------------------------------------
    # 动态调优（边运行边更新）
    # ---------------------------------------------------------
    def run_dynamic(self):
        while not self.search_algorithm.stop():
            config = self.search_algorithm.next_config(self.db.get_all())
            result = CRunner(self.target_program).run(config)
            self.logger.log(f"Finished: {config} -> {result:.6f}s")
            self.db.save(config, result)
            self.search_algorithm.update(config, result)

    # ---------------------------------------------------------
    # 自定义运行
    # ---------------------------------------------------------
    # ---------------------------------------------------------
    # 自定义调优（算法自带执行逻辑）
    # ---------------------------------------------------------
    def run_custom(self):
        start_time = time.time()
        self.logger.log("Delegating control to custom algorithm...")

        self.search_algorithm.custom_run(
            target_program=self.target_program,
            db=self.db,
            logger=self.logger
        )

        elapsed = time.time() - start_time
        self.db.add_summary(self.algorithm_name, elapsed)
        self.logger.log(f"Custom algorithm completed in {elapsed:.2f}s")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Matrix Multiplication Autotuner")
    parser.add_argument("--input", type=str, default="input.txt", help="Path to input configuration file")
    parser.add_argument("--workers", type=int, default=4, help="Number of parallel worker processes")
    parser.add_argument("--exp_name", type=str, default=None, help="Custom experiment name")
    args = parser.parse_args()

    tuner = Autotuner(args.input, max_workers=args.workers, exp_name=args.exp_name)
    tuner.run()
