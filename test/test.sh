#!/bin/bash

# 引数エラーテスト
echo "===== test args error ====="
python3 ../file-converter.py
python3 ../file-converter.py aaa
python3 ../file-converter.py aaa bbb
python3 ../file-converter.py aaa bbb ccc
python3 ../file-converter.py aaa bbb ccc ddd

# 引数のコマンドテスト
echo ""
echo "===== test args command ====="
python3 ../file-converter.py aaa bbb ccc
python3 ../file-converter.py markdown bbb ccc

# 引数のインプットファイルパスのテスト
echo ""
echo "===== test args input file path ====="
python3 ../file-converter.py markdown bbb ccc
python3 ../file-converter.py markdown input.md ccc


# markdownファイルがコンバートできているかテスト
echo ""
echo "===== test convert markdown file ====="
python3 ../file-converter.py markdown input.md output.html

diff -q output.html ./testPathFile/output.html
if [ $? -eq 0 ]; then
    echo "同じファイルです。"
elif [ $? -eq 1 ]; then
    echo "違うファイルです。"
fi