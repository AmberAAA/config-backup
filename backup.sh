#!/bin/sh

dir=$(dirname $0)
date=$(date )
cd $dir


rm -rf ./nvim

source="$HOME/.config/nvim"

cp -r $source ./nvim
git add .
git commit -am "定时任务"
git push

echo "同步结束\n\n\n"
