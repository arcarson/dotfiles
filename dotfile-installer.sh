#!/bin/sh

echo "Installing dotfiles..."

cp -vr dot.vim ~/.vim

cp -v dot.aliases ~/.aliases
cp -v dot.bash_profile ~/.bash_profile
cp -v dot.gitconfig ~/.gitconfig
cp -v dot.gitignore ~/.gitignore
cp -v dot.slate ~/.slate
cp -v dot.vimrc ~/.vimrc

