#!/bin/bash

# symlink for neovim config if neovim installed, else create vimrc symlink
command -v nvim >/dev/null && ln -sf ~/.dotfiles/vimrc ~/.config/nvim/init.vim ; echo "vimrc installed at ~/.config/nvim/init.vim" || ln -sf ~/.dotfiles/vimrc ~/.vim/vimrc ; echo "vimrc installed at ~/.vim/vimrc"

ln -sf ~/.dotfiles/bashrc ~/.bashrc
echo "bashrc installed at ~/.bashrc"

ln -sf ~/.dotfiles/tmux.conf ~/.config/tmux/tmux.conf
echo "tmux.conf installed at ~/.config/tmux/tmux.conf"

ln -sf ~/.dotfiles/gitconfig ~/.config/git/config
echo "gitconfig installed at ~/.config/git/config"
