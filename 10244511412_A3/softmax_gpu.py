import torch

import triton
import triton.language as tl
from triton.runtime import driver

def naive_softmax(x):
    """Compute row-wise softmax of X using native pytorch

    We subtract the maximum element in order to avoid overflows. Softmax is invariant to
    this shift.
    """
    x_max = x.max(dim=1)[0]
    z = x - x_max[:, None]
    numerator = torch.exp(z)
    denominator = numerator.sum(dim=1)
    ret = numerator / denominator[:, None]
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
    on_trace_ready=torch.profiler.tensorboard_trace_handler("./log"),
    with_stack=True,
) as prof:
    for i in range(200):
        naive_softmax(x)

print(prof.key_averages().table(sort_by="cpu_time_total", row_limit=10))
