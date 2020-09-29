#!/bin/bash

# symlink for neovim config if neovim installed, else create vimrc symlink
if command -v nvim >/dev/null 2>&1; then
    mkdir -vp ~/.config/nvim/{autoload,vim-plug}
    echo "Go download and install https://github.com/junegunn/vim-plug in
    ~/.config/nvim/autoload"
    ln -vsi ~/.config/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
    ln -vsi ~/.config/dotfiles/nvim/vim-plug/plugins.vim ~/.config/nvim/vim-plug/plugins.vim
else
    mkdir -vp ~/.vim/
    ln -vsi ~/.config/dotfiles/vimrc ~/.vim/vimrc
fi

ln -vsi ~/.config/dotfiles/bashrc ~/.bashrc

mkdir -vp ~/.config/tmux/
ln -vsi ~/.config/dotfiles/tmux.conf ~/.config/tmux/tmux.conf

mkdir -vp ~/.config/git/
ln -vsi ~/.config/dotfiles/gitconfig ~/.config/git/config
