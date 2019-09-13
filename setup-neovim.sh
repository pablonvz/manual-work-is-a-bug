#!/bin/bash

# TODO: install neovim
# brew install neovim

rm -fr ~/.config/nvim
mkdir -v ~/.config/nvim

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

# configure Vundle
ln -vs `realpath neovim.init.vim` ~/.config/nvim/init.vim

echo "alias vim='nvim' # added on $(date)" >> ~/.bash_profile

