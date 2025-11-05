import subprocess
import os
import uuid
from codes.utils.Timer import Timer


class CRunner:
    def __init__(self, target_program):
        """
        target_program: 目标 C 程序路径 (如 'MatrixMultiplication.c')
        """
        self.target_program = target_program
        self.tmp_dir = "tmp"
        os.makedirs(self.tmp_dir, exist_ok=True)

    def run(self, config):
        """
        编译并运行目标程序，返回运行时间（秒）。
        config: dict，例如 {'optimize_level': 'O2', 'block_size': '64'}
        """
        opt_flag = config.get("optimize_level", "O0")
        block_size = config.get("block_size", "64")

        # 每个进程生成唯一可执行文件名，防止并行冲突
        exe_name = f"matrix_{opt_flag}_{uuid.uuid4().hex[:6]}"
        exe_path = os.path.join(self.tmp_dir, exe_name)

        # 编译命令
        compile_cmd = ["clang", f"-{opt_flag}", self.target_program, "-o", exe_path]

        try:
            subprocess.run(compile_cmd, check=True, capture_output=True, text=True)
        except subprocess.CalledProcessError as e:
            print(f"[Compile Error] {compile_cmd}\n{e.stderr}")
            return float("inf")

        # 执行程序并计时
        try:
            with Timer() as t:
                result = subprocess.run([exe_path, str(block_size)],
                                        capture_output=True, text=True)
        except Exception as e:
            print(f"[Runtime Error] {exe_path}: {e}")
            return float("inf")

        # 检查执行状态
        if result.returncode != 0:
            print(f"[Error] Program crashed for {config}:\n{result.stderr}")
            return float("inf")

        # 提取运行时间
        try:
            runtime = float(result.stdout.strip())
        except ValueError:
            print(f"[Warning] Invalid output for {config}: '{result.stdout.strip()}'")
            runtime = float("inf")

        # 可选：运行后清理可执行文件
        try:
            os.remove(exe_path)
        except FileNotFoundError:
            pass

        return runtime
