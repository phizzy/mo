#!/bin/sh

if [ $# -lt 1 ]
then
    echo "请输入新建文章的名称，如：2014-04-03-文章"
    exit 1
fi

if [ -f "_posts/$1.markdown" ]
then
    echo "文章$1重名"
    exit 1
fi

mkdir -p "images/$1/"

touch _posts/"$1".markdown
