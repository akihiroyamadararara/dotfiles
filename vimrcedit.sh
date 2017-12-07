#!/bin/sh

#.vimrcをホームディレクトリで編集してしまったときに走らせて下さい.

mv ~/.vimrc ~/dotfiles/
#update.sh
git status
git diff
git add .
git diff -cached
git commit -m "comment"
git push origin master
