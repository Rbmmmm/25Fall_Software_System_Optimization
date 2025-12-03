import os
import re
import subprocess
import shutil
import sys

THRESHOLDS = [2, 4, 8, 16, 32, 64, 100, 128]

NUM_ELEMENTS = 400000
NUM_TRIALS = 10

SOURCE_FILE = "sort_c.c"
BACKUP_FILE = "sort_c.c.bak"
EXECUTABLE = "./sort"

COMPILE_CMD = ["make", "sort"]
CLEAN_CMD = ["make", "clean"]

VALGRIND_CMD = [
    "valgrind",
    "--tool=cachegrind",
    "--cache-sim=yes",
    "--branch-sim=yes",
]

def backup_file():
    if os.path.exists(SOURCE_FILE):
        shutil.copy(SOURCE_FILE, BACKUP_FILE)

def restore_file():
    if os.path.exists(BACKUP_FILE):
        shutil.move(BACKUP_FILE, SOURCE_FILE)

def update_threshold(val):
    """使用正则修改源码中的阈值定义"""
    try:
        with open(SOURCE_FILE, 'r') as f:
            content = f.read()
        
        pattern = r"(#define\s+COARSEN_THRESHOLD\s+)(\d+)"
        if not re.search(pattern, content):
            print(f"[Error]")
            return False
        
        new_content = re.sub(pattern, f"\\g<1>{val}", content)
        
        with open(SOURCE_FILE, 'w') as f:
            f.write(new_content)
        return True
    except Exception as e:
        print(f"[Error] 修改文件失败: {e}")
        return False

def parse_valgrind_output(stdout_data, stderr_data):
    """解析 stdout 获取时间，解析 stderr 获取 Cachegrind 数据"""
    stats = {}
    
    time_match = re.search(r"sort_c\s+:\s+Elapsed execution time:\s+(\d+\.\d+)\s+sec", stdout_data)
    stats['time'] = float(time_match.group(1)) if time_match else 0.0

    def get_metric(pattern, text):
        match = re.search(pattern, text)
        if match:
            return int(match.group(1).replace(',', ''))
        return 0

    stats['irefs'] = get_metric(r"I refs:\s+([\d,]+)", stderr_data)
    stats['drefs'] = get_metric(r"D refs:\s+([\d,]+)", stderr_data)
    stats['d1_miss'] = get_metric(r"D1\s+misses:\s+([\d,]+)", stderr_data)
    stats['branches'] = get_metric(r"Branches:\s+([\d,]+)", stderr_data)
    stats['mispred'] = get_metric(r"Mispredicts:\s+([\d,]+)", stderr_data)

    return stats

def main():
    print(f"--- Starting Advanced Benchmark (N={NUM_ELEMENTS}) ---")
    print(f"{'B':<4} | {'Time(s)':<8} | {'I refs':<14} | {'D refs':<14} | {'Branches':<14} | {'Mispred':<10}")
    print("-" * 85)

    results = {}
    backup_file()

    try:
        for val in THRESHOLDS:
            if not update_threshold(val):
                break
            
            subprocess.run(CLEAN_CMD, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            build = subprocess.run(COMPILE_CMD, stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
            if build.returncode != 0:
                print(f"Build failed for threshold {val}")
                continue

            cmd = VALGRIND_CMD + [EXECUTABLE, str(NUM_ELEMENTS), str(NUM_TRIALS)]
            run = subprocess.run(cmd, capture_output=True, text=True)
            
            data = parse_valgrind_output(run.stdout, run.stderr)
            results[val] = data

            print(f"{val:<4} | {data['time']:.4f}   | {data['irefs']:<14,} | {data['drefs']:<14,} | {data['branches']:<14,}| {data['mispred']:<10,}")

    except KeyboardInterrupt:
        print("\nInterrupted.")
    finally:
        restore_file()

    if results:
        best_time = min(results, key=lambda k: results[k]['time'])
        best_irefs = min(results, key=lambda k: results[k]['irefs'])
        
        print("-" * 85)
        print(f"Best Threshold (Time):   {best_time} ({results[best_time]['time']:.4f} sec)")
        print(f"Best Threshold (I refs): {best_irefs} ({results[best_irefs]['irefs']:,} refs)")

if __name__ == "__main__":
    main()