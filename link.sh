#!/bin/sh

folder=~/.config/nvim

rm -rf ./nvim

source="$HOME/.config/nvim"

cp -r $source ./nvim
git add .
git commit -am "定时任务"
git push
