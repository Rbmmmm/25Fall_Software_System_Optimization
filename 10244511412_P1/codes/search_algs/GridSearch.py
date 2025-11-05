# GridSearch.py
# 实现穷举搜索（网格搜索）算法

import itertools

class GridSearch:
    def __init__(self, params):
        """
        初始化参数空间。
        params: dict, 形如 {"optimize_level": ["O0", "O1"], "block_size": ["8", "16", "32"]}
        """
        self.params = params
        self.best_config = None
        self.best_result = float("inf")

    def all_configs(self):
        """
        生成所有可能的参数组合。
        使用 itertools.product() 对参数空间进行笛卡尔积组合。
        """
        keys = list(self.params.keys())
        values = list(self.params.values())
        for combination in itertools.product(*values):
            config = dict(zip(keys, combination))
            yield config  # 返回一个生成器，逐个配置供 Autotuner 并行执行

    def update(self, config, result):
        """
        每次测试结束后由 Autotuner 调用，用于更新全局最优结果。
        """
        if result < self.best_result:
            self.best_result = result
            self.best_config = config
