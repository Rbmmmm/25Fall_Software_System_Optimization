import torch
import torch.nn.functional as F
import math

def naive_attention(q, k, v):
    # 获取维度 d_k 
    d_k = q.size(-1)
    
    # 1. 计算 QK^T (Batch, Seq_Len, Seq_Len)
    # transpose(-2, -1) 用于交换最后两个维度进行矩阵乘法
    scores = torch.matmul(q, k.transpose(-2, -1))
    
    # 2. 缩放 (Scaling)
    scores = scores / math.sqrt(d_k)
    
    # 3. Softmax 归一化，得到注意力权重
    attn_weights = F.softmax(scores, dim=-1)
    
    # 4. 加权求和 (Batch, Seq_Len, Seq_Len) x (Batch, Seq_Len, Dim) -> (Batch, Seq_Len, Dim)
    output = torch.matmul(attn_weights, v)
    
    return output

if __name__ == "__main__":
    # 初始化参数
    # Batch=32, Seq_Len=1024, Dim=128
    # 这样的规模会产生一个 1024x1024 的 Attention Matrix，能明显看出内存瓶颈
    B, N, D = 32, 1024, 128
    
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    
    q = torch.randn((B, N, D), device=device)
    k = torch.randn((B, N, D), device=device)
    v = torch.randn((B, N, D), device=device)

    naive_attention(q, k, v)

    with torch.profiler.profile(
        activities=[
            torch.profiler.ProfilerActivity.CPU,
            torch.profiler.ProfilerActivity.CUDA,
        ],
        on_trace_ready=torch.profiler.tensorboard_trace_handler("./log/attention"),
        record_shapes=True,
        with_stack=True
    ) as prof:
        for i in range(10):
            naive_attention(q, k, v)
    
    print(prof.key_averages().table(sort_by="cpu_time_total", row_limit=10))
    # print(prof.key_averages().table(sort_by="cuda_time_total", row_limit=10))