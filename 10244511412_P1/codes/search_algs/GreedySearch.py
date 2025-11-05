import random
import itertools


class GreedySearch:
    """
    Greedy Search（贪心搜索）算法
    ------------------------------------------------
    算法思想：
        1. 从一个随机初始配置开始；
        2. 在邻域中搜索更优配置；
        3. 如果找到更优结果，则更新当前配置；
        4. 否则认为收敛，停止搜索。

    支持的接口：
        - next_config(history): 根据当前结果选择下一个配置
        - update(config, result): 根据结果更新状态
        - stop(): 判断是否结束
    """

    def __init__(self, params, max_iters=20):
        """
        初始化搜索算法
        params: 参数空间（字典）
        例如: {"optimize_level": ["O0", "O1", "O2", "O3"], "block_size": ["8", "16", "32", "64", "128"]}
        """
        self.params = params
        self.param_names = list(params.keys())
        self.param_values = [params[k] for k in self.param_names]
        self.max_iters = max_iters

        # 搜索状态
        self.history = {}              # config -> result
        self.current_config = self._random_config()  # 当前配置
        self.best_config = None
        self.best_result = float("inf")
        self.iter_count = 0
        self.converged = False

    # ---------------------------------------------------------
    # 工具函数
    # ---------------------------------------------------------
    def _random_config(self):
        """随机生成一个初始配置"""
        return {k: random.choice(vs) for k, vs in self.params.items()}

    def _get_neighbors(self, config):
        """生成邻域配置：每次修改一个参数，前后相邻一格"""
        neighbors = []
        for k in self.param_names:
            values = self.params[k]
            idx = values.index(config[k])
            # 左右邻居
            if idx > 0:
                new_cfg = dict(config)
                new_cfg[k] = values[idx - 1]
                neighbors.append(new_cfg)
            if idx < len(values) - 1:
                new_cfg = dict(config)
                new_cfg[k] = values[idx + 1]
                neighbors.append(new_cfg)
        return neighbors

    # ---------------------------------------------------------
    # 接口函数
    # ---------------------------------------------------------
    def next_config(self, history):
        """
        根据已有历史结果选择下一个待测配置
        """
        self.iter_count += 1
        if self.iter_count == 1:
            # 第一次返回初始配置
            return self.current_config

        # 生成邻域
        neighbors = self._get_neighbors(self.current_config)
        # 过滤掉已经测试过的配置
        neighbors = [n for n in neighbors if str(n) not in history]

        if not neighbors:
            self.converged = True
            return self.current_config

        # 按照随机顺序选择下一个候选点（也可扩展为启发式选择）
        return random.choice(neighbors)

    def update(self, config, result):
        """更新算法内部状态"""
        self.history[str(config)] = result

        if result < self.best_result:
            self.best_result = result
            self.best_config = config
            self.current_config = config  # 移动到更优点
        else:
            # 如果连续几次没有改进，可以认为收敛
            if self.iter_count > self.max_iters:
                self.converged = True

    def stop(self):
        """判断是否停止搜索"""
        return self.converged or self.iter_count >= self.max_iters


