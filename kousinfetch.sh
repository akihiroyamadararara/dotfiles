#!/bin/bash

#remote ⇒　local 

git fetch origin master
git reset --hard origin/master

#remoteをフェッチした後に、ホームディレクトリのdotfilesも更新します
rm ~/.vimrc
rm ~/.gvimrc
rm -rf ~/.vim
rm ~/.gitconfig


ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gvimrc ~/.gvimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
