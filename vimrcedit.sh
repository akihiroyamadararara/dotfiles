#!/bin/sh

#.vimrcをホームディレクトリで編集してしまったときに走らせて下さい.
#local ⇒ remote

mv ~/.vimrc ~/dotfiles/

#mv ~/.vim ~/dotfiles/

#update.sh
git status
git diff
git add .
git diff -cached
git commit -m "comment"
git push origin master
