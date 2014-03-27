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

now=`date '+%Y-%m-%d %H:%M:%S'`
echo "---\nlayout: post\ndate: $now\ntitle: "Title"\ncategories: blog\ntags: slide\nslideImage: \n---" > _posts/"$1".markdown
