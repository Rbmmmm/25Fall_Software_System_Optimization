import torch

def online_softmax(x):
    rows, cols = x.shape
    
    # 1. 初始化 (对应 Algorithm 3: line 1-2)
    # 我们维护 N 行的状态，利用 PyTorch 在 batch 维度并行
    m_prev = torch.full((rows,), float('-inf'), device=x.device, dtype=x.dtype)
    d_prev = torch.zeros((rows,), device=x.device, dtype=x.dtype)
    
    # 2. 第一次遍历：流式计算最大值和归一化因子 (对应 Algorithm 3: line 3-6)
    for j in range(cols):
        val = x[:, j]
        
        m_curr = torch.max(m_prev, val)
        
        correction = torch.exp(m_prev - m_curr)
        new_term = torch.exp(val - m_curr)
        
        d_curr = d_prev * correction + new_term

        m_prev = m_curr
        d_prev = d_curr

    # 循环结束后，m_prev 即为最终的 m_V (每行的最大值)
    # d_prev 即为最终的 d_V (每行的归一化因子)
    
    # 为了广播计算，扩展维度为 (N, 1)
    m_final = m_prev.unsqueeze(1)
    d_final = d_prev.unsqueeze(1)
    
    # 3. 第二次遍历：生成最终输出 (对应 Algorithm 3: line 7-9)
    ret = torch.exp(x - m_final) / d_final
    
    return ret

N = 100
M = 5000
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
x = torch.randn((N, M), device=device)

with torch.profiler.profile(
    activities=[
        torch.profiler.ProfilerActivity.CPU,
        torch.profiler.ProfilerActivity.CUDA,
    ],
    on_trace_ready=torch.profiler.tensorboard_trace_handler("./log/online_softmax"),
    with_stack=True,
) as prof:
    for i in range(1):
        online_softmax(x)

print(prof.key_averages().table(sort_by="cuda_time_total", row_limit=10))