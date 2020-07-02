#!/bin/bash

# symlink for neovim config if neovim installed, else create vimrc symlink
if command -v nvim >/dev/null 2>&1; then
    mkdir -vp ~/.config/nvim/
    ln -vsi ~/.config/dotfiles/vimrc ~/.config/nvim/init.vim
else
    mkdir -vp ~/.vim/
    ln -vsi ~/.config/dotfiles/vimrc ~/.vim/vimrc
fi

ln -vsi ~/.config/dotfiles/bashrc ~/.bashrc

mkdir -vp ~/.config/tmux/
ln -vsi ~/.config/dotfiles/tmux.conf ~/.config/tmux/tmux.conf

mkdir -vp ~/.config/git/
ln -vsi ~/.config/dotfiles/gitconfig ~/.config/git/config
