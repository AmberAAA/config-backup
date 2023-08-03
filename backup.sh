#!/bin/sh

dir=$(dirname $0)
cd $dir


rm -rf ./nvim

source="$HOME/.config/nvim"

cp -r $source ./nvim
git add .
git commit -am "定时任务"
git push
