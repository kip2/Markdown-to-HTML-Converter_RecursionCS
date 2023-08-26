#!/bin/bash

echo "===== test args error ====="
# 引数エラーチェックテスト
python3 ../file-converter.py
python3 ../file-converter.py aaa
python3 ../file-converter.py aaa bbb
python3 ../file-converter.py aaa bbb ccc
python3 ../file-converter.py aaa bbb ccc ddd

echo ""
echo "===== test args command ====="
# 引数のコマンドチェックテスト
python3 ../file-converter.py aaa bbb ccc
python3 ../file-converter.py markdown bbb ccc

echo ""
echo "===== test args input file path ====="
# 引数のインプットファイルパスのチェックテスト
python3 ../file-converter.py markdown bbb ccc
python3 ../file-converter.py markdown input.md ccc


