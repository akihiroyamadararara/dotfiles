#!/bin/sh

#.vimrcをホームディレクトリで編集してしまったときに走らせて下さい.
#local ⇒ remote

rm ~/dotfiles/.vimrc
#rm -rf ~/dotfiles/.vim


mv ~/.vimrc ~/dotfiles/
#mv ~/.vim ~/dotfiles/

#update.sh
git status
git diff
git add .
git diff -cached
git commit -m "comment"
git push origin master
