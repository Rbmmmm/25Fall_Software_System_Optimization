import random
import itertools

class RandomSearch:
    def __init__(self, params, sample_size=10):
        """
        随机搜索算法
        --------------------------------------------
        输入参数：
            params: 参数空间（字典类型）
            sample_size: 采样数量（默认10）
        """
        self.params = params
        self.sample_size = sample_size
        self.best_config = None
        self.best_result = float("inf")

        # 计算搜索空间大小
        keys = list(params.keys())
        values = list(params.values())
        self.all_possible_configs = [
            dict(zip(keys, v)) for v in itertools.product(*values)
        ]

    def all_configs(self):
        """
        从搜索空间中随机抽样若干配置
        --------------------------------------------
        返回：
            一个生成器（yield），每次返回一个随机配置
        """
        # 随机采样指定数量（不放回）
        sample_configs = random.sample(
            self.all_possible_configs,
            min(self.sample_size, len(self.all_possible_configs))
        )

        for config in sample_configs:
            yield config

    def update(self, config, result):
        """
        根据结果更新最优配置
        """
        if result < self.best_result:
            self.best_result = result
            self.best_config = config
