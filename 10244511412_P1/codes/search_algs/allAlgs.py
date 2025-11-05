# allAlgs.py
# 统一的搜索算法注册与调度模块

from codes.search_algs.GridSearch import GridSearch
from codes.search_algs.RandomSearch import RandomSearch
from codes.search_algs.GreedySearch import GreedySearch
from codes.search_algs.ParallelSearch import ParallelSearch
from codes.search_algs.SimulatedAnnealing import SimulatedAnnealing

def get_search_algorithm(name, params):
    """
    根据算法名称返回对应的搜索算法对象。
    所有算法都应遵循相同的接口定义：
    - all_configs(): 返回所有候选配置（或生成器）
    - update(config, result): 更新当前最优解（用于反馈优化）
    """
    algs = {
        "GridSearch": GridSearch,
        "GreedySearch": GreedySearch,
        "RandomSearch": RandomSearch,
        "ParallelSearch": ParallelSearch,
        "SimulatedAnnealing": SimulatedAnnealing
    }

    if name not in algs:
        raise ValueError(f"Unsupported search algorithm: {name}")

    return algs[name](params)
