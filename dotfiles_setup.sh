#!/bin/bash

# symlink for neovim config if neovim installed, else create vimrc symlink
if command -v nvim >/dev/null 2>&1; then
    mkdir -p ~/.config/nvim/
    ln -si ~/.dotfiles/vimrc ~/.config/nvim/init.vim &&
    echo "vimrc installed at ~/.config/nvim/init.vim"
else
    mkdir -p ~/.vim/
    ln -si ~/.dotfiles/vimrc ~/.vim/vimrc &&
    echo "vimrc installed at ~/.vim/vimrc"
fi

ln -si ~/.dotfiles/bashrc ~/.bashrc &&
echo "bashrc installed at ~/.bashrc"

mkdir -p ~/.config/tmux/
ln -si ~/.dotfiles/tmux.conf ~/.config/tmux/tmux.conf &&
echo "tmux.conf installed at ~/.config/tmux/tmux.conf"

mkdir -p ~/.config/git/
ln -si ~/.dotfiles/gitconfig ~/.config/git/config &&
echo "gitconfig installed at ~/.config/git/config"
