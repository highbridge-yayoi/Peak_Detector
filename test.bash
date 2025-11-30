#!/bin/bash
# SPDX-FileCopyrightText: 2025 highbrige-yayoi <hainu738@gmail.com>
# SPDX-License-Identifier: BSD-3-Clause

# テスト用に入力ファイルを作成
cat << EOF > test_input.txt
1
5
2
8
3
EOF

# 期待される出力
# Maxima: 5, 8
# Minima: 2 
expected_output="5
8

2"

# pdを実行
output=$(python3 ./pd < test_input.txt)

# 出力
echo "Output:"
echo "$output"
echo "Expected:"
echo "$expected_output"

# 結果
if [ "$output" = "$expected_output" ]; then
    echo "Test passed"
else
    echo "Test failed"
fi