# Dotfiles

A place to store dotfiles that could become useful on other machines.

When installing on a new machine, first make sure tmux, git, and vim/nvim are
installed on the system. Then clone this repo into ~/.config and run the
setup.sh script.

My vim setup uses no plugins, just setting changes. I have started to use
neovim as a more fully featured editor where I can experiment with all sorts of
different plugins. My goal is still to keep things fairly minimal though,
mostly visual candy but also quite a few python specific nice to haves. If the
system has neovim installed the install script will setup the folder structure
and link the two config files. It is necessary to install
(vim-plug)[https://github.com/junegunn/vim-plug] manually though.

If neovim is not installed, it is assumed that vim is. Maybe eventually I will
move completely over to nvim but for now I'll use both.
