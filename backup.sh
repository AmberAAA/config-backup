#!/bin/sh

dir=$(dirname $0)
date=$(date "+%Y-%m-%d %H:%M:%S")
echo "同步助手V1 \n 开始同步配置至github \n"
echo "时间：$(date)"

cd $dir
rm -rf ./nvim
source="$HOME/.config/nvim"
cp -r $source ./nvim
git add .
git commit -am "定时任务"
git push

echo "同步结束\n\n\n"
