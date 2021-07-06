#!/bin/sh
# 一行目は必ず入力するコマンド

# 表示方法
# echo "hello world"

# 変数 記号の間に空白はNG
#  name="karu"
# echo "$name"
# echo '$name' シングルは表示されない

# 引数を取り出せる
# echo $1
# ファイル名が取得
# echo $0
# 引数の数
# echo $#
# 全ての引数を取得
# echo $@

# コマンド実行後に引数を受け付ける状態にする
# read -p "Name: " name
# echo "$name"

#複数の引数を受け取りたい場合
# read -p "Pcik 3: " c1 c2 c3
# echo $c1
# echo $c2
# echo $c3

# 配列について
# colors=(red blue pick)
# echo ${colors[0]}
# echo ${colors[1]}
# echo ${colors[2]}
# 全てを表示する
# echo ${colors[@]}
# 数を取得したい
# echo ${#colors[@]}

#  変更したい場合
# colors[0]="anime"
# colors[1]="train"

# 追加したい場合
# colors+=(green mod)
# echo ${colors[@]}

# echo $((5 + 2))

# n=5
# ((n=n+5))
# echo $n

# echo $((10/6))

read -p "Name? " name
if [ "$name" = "komachi" ]
then
    echo "welocme"
elif [ "$name" == "fukuro" ]; then
    echo "welcome too"
else
    echo "you are not allowed"
fi