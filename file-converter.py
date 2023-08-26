import sys, os
import markdown

def argsIsError(args):
    """
    引数のエラーチェック関数
    """
    usageCode = "Usage : file-converter.py markdown inputfile outputfile"

    # 引数の数をチェック
    if len(args) < 4:
        print("Error: 引数の数が足りません。")
        print(usageCode)
        exit(1)
    elif len(args) > 4:
        print("Error: 引数の数が多すぎます。")
        print(usageCode)
        exit(1)

    # コマンドのチェック
    command = args[1]
    if command != "markdown":
        print("Error: そのようなコマンドは存在しません。")
        print(usageCode)
        exit(1)
    
    # 引数のファイルパスをチェック
    inputFilePath = args[2]
    if not os.path.isfile(inputFilePath):
        print("Error: インプットパスにファイルが存在しません。")
        exit(1)
        
    return 

def convertMarkdownToHTML(args) :
    """
    引数で受け取ったmarkdownファイルをHTMLファイルに変換する関数
    """
    inputFilePath = args[2]
    outputFilePath = args[3]

    outputHTML = ""

    # inputファイルをHTMLにコンバートする
    with open(inputFilePath) as f:
        md = f.read()
        outputHTML = markdown.markdown(md, extensions=['extra', 'sane_lists'])

    # コンバートしたファイルを書き出す
    with open(outputFilePath, "w") as f:
        f.write(outputHTML)

if __name__ == "__main__":
    # 引数のエラーチェック
    argsIsError(sys.argv)

    # マークダウンをHTMLにコンバート
    convertMarkdownToHTML(sys.argv)


