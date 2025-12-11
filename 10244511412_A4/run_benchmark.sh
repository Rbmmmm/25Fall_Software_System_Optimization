#!/bin/bash

# 定义配置
TARGET_BIN="matrix_multiply"       
OUTPUT_DIR="outputs"               

# 创建输出目录（如果不存在）
if [ ! -d "$OUTPUT_DIR" ]; then
    mkdir -p "$OUTPUT_DIR"
    echo "创建目录: $OUTPUT_DIR"
fi

# 定义编译器组合
declare -a compilers=(
    "gcc g++"
    "clang clang++"
)

# 定义优化等级
declare -a opt_levels=("-O0" "-O1" "-O2")

echo "=== 开始自动化测试 ==="
echo "结果将保存至: $OUTPUT_DIR/"

# 2. 开始循环
for compiler_pair in "${compilers[@]}"; do
    read -r cc_cmd cxx_cmd <<< "$compiler_pair"

    for opt in "${opt_levels[@]}"; do
        echo "[正在测试] 编译器: $cc_cmd | 优化: $opt"

        # 清理环境
        make clean > /dev/null 2>&1

        # 编译并运行
        if make report CC=$cc_cmd CXX=$cxx_cmd OPTLEVEL=$opt > /dev/null 2>&1; then
            
            # 定义文件路径, eg: outputs/report.txt.gcc-O2
            REPORT_FILENAME="report.txt.${cc_cmd}${opt}"
            FULL_REPORT_PATH="${OUTPUT_DIR}/${REPORT_FILENAME}"
            
            # 移动报告到指定文件夹
            if [ -f "report.txt" ]; then
                mv report.txt "$FULL_REPORT_PATH"
                
                # 获取文件大小并追加到报告末尾
                if [ -f "$TARGET_BIN" ]; then
                    file_size=$(stat -c %s "$TARGET_BIN")
                    
                    echo "" >> "$FULL_REPORT_PATH"
                    echo "#############################################" >> "$FULL_REPORT_PATH"
                    echo "# Additional Metric: Binary Size" >> "$FULL_REPORT_PATH"
                    echo "#############################################" >> "$FULL_REPORT_PATH"
                    echo "Code Size (Bytes): $file_size" >> "$FULL_REPORT_PATH"
                    
                    echo "  -> 成功: 已保存 $REPORT_FILENAME (大小: $file_size 字节)"
                else
                    echo "  -> 警告: 找不到二进制文件 $TARGET_BIN"
                fi
            else
                 echo "  -> 错误: 未生成 report.txt，测试可能失败"
            fi

        else
            echo "  -> 失败: 编译出错"
        fi
    done
done

echo "=== 全部完成 ==="
echo "请查看 $OUTPUT_DIR/ 目录下的报告文件。"