import os
import time
import json
from concurrent.futures import ProcessPoolExecutor, as_completed
from codes.runners.C_runner import CRunner
from codes.utils.Database import Database
from codes.utils.Logger import Logger


def run_single_algorithm(alg_name, params, target_program, exp_dir):
    """
    子算法运行函数（用于子进程中执行）
    ------------------------------------------------
    输入：
        alg_name: 算法名称（如 "GridSearch", "RandomSearch", "GreedySearch"）
        params: 参数空间字典
        target_program: 目标程序文件
        exp_dir: 当前实验主目录
    输出：
        (算法名, 最优配置, 最优时间)
    """
    # ✅ 延迟导入，避免循环依赖
    from codes.search_algs.allAlgs import get_search_algorithm

    algo = get_search_algorithm(alg_name, params)
    db_path = os.path.join(exp_dir, f"{alg_name}_subresult.json")
    db = Database(db_path)
    logger = Logger(f"{alg_name}", log_dir=exp_dir)

    logger.log(f"Starting sub-algorithm {alg_name}...")

    start = time.time()

    if hasattr(algo, "all_configs"):
        # 静态算法
        for config in algo.all_configs():
            result = CRunner(target_program).run(config)
            algo.update(config, result)
            db.save(config, result)
            logger.log(f"{alg_name}: {config} -> {result:.6f}s")

    elif hasattr(algo, "next_config") and hasattr(algo, "stop"):
        # 动态算法
        while not algo.stop():
            config = algo.next_config(db.get_all())
            result = CRunner(target_program).run(config)
            algo.update(config, result)
            db.save(config, result)
            logger.log(f"{alg_name}: {config} -> {result:.6f}s")

    best_config, best_time = algo.best_config, algo.best_result
    total = time.time() - start

    logger.log(f"{alg_name} finished. Best: {best_config} -> {best_time:.6f}s, Total: {total:.2f}s")
    return alg_name, best_config, best_time, total


class ParallelSearch:
    """
    ParallelSearch 类
    ------------------------------------------------
    用于同时运行多个搜索算法（如 GridSearch、RandomSearch、GreedySearch），
    自动选出最优结果。
    """

    def __init__(self, params, sub_algorithms=None, exp_dir=None, max_workers=3):
        self.params = params
        self.exp_dir = exp_dir if exp_dir else "results/ParallelSearch"
        os.makedirs(self.exp_dir, exist_ok=True)
        self.max_workers = max_workers

        self.sub_algorithms = sub_algorithms or ["GridSearch", "RandomSearch", "GreedySearch"]

        self.best_config = None
        self.best_result = float("inf")

        self.logger = Logger("ParallelSearch", log_dir=self.exp_dir)

    def run_all(self, target_program):
        self.logger.log(f"Launching parallel execution for: {', '.join(self.sub_algorithms)}")

        start_global = time.time()
        results = []

        with ProcessPoolExecutor(max_workers=self.max_workers) as executor:
            tasks = [
                executor.submit(run_single_algorithm, alg, self.params, target_program, self.exp_dir)
                for alg in self.sub_algorithms
            ]

            for future in as_completed(tasks):
                alg_name, best_config, best_time, total = future.result()
                results.append((alg_name, best_config, best_time, total))
                self.logger.log(f"{alg_name} completed: Best={best_config}, Time={best_time:.6f}s")

                if best_time < self.best_result:
                    self.best_result = best_time
                    self.best_config = best_config

        total_time = time.time() - start_global
        self.logger.log(f"ParallelSearch finished in {total_time:.2f}s")
        self.logger.log(f"Global Best: {self.best_config} -> {self.best_result:.6f}s")

        summary_path = os.path.join(self.exp_dir, "parallel_summary.json")
        with open(summary_path, "w") as f:
            json.dump(
                {
                    "sub_algorithms": self.sub_algorithms,
                    "results": [
                        {"algorithm": a, "best_config": c, "best_time": t, "runtime": r}
                        for a, c, t, r in results
                    ],
                    "global_best": {"config": self.best_config, "time": self.best_result},
                    "total_runtime": total_time,
                },
                f,
                indent=4,
            )

        return self.best_config, self.best_result
