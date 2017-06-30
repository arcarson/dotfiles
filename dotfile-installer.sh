#!/bin/sh

echo "Installing dotfiles..."

ln -sv ~/tools/dotfiles/.aliases ~/.aliases
ln -sv ~/tools/dotfiles/.bash_profile ~/.bash_profile
ln -sv ~/tools/dotfiles/.cdpath ~/.cdpath
ln -sv ~/tools/dotfiles/.gitconfig ~/.gitconfig
ln -sv ~/tools/dotfiles/.gitignore ~/.gitignore
ln -sv ~/tools/dotfiles/.path ~/.path
ln -sv ~/tools/dotfiles/.hammerspoon ~/.hammerspoon
ln -sv ~/tools/dotfiles/.vim ~/.vim
ln -sv ~/tools/dotfiles/.vimrc ~/.vimrc
ln -sv ~/tools/dotfiles/karabiner ~/.config/
