#!/bin/bash

# List of dotfiles to be recreated
dotfiles=("vimrc" "bashrc" "tmux.conf")
# Location of dotfiles folder
dir="${HOME}/Documents/github/dotfiles"

# Create soft link in Home for each file
for dotfile in "${dotfiles[@]}";do
    ln -sf "${dir}" "${HOME}/.${dotfile}"
done


