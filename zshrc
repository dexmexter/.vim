# Path to your oh-my-zsh installation.
export ZSH="/home/dexmexter/.config/oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    sudo
    vi-mode
    colored-man-pages
    ssh-agent
)

zstyle :omz:plugins:ssh-agent identities backups_ed25519 id_ed25519

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# User configuration

# Run neofetch if exists
command -v neofetch &> /dev/null && neofetch

# Add ~/.local/bin to PATH
mkdir -p $HOME/.local/bin/
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# ~/ Clean-up:
export LESSHISTFILE="-"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

alias tmux='tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'

# For a full list of active aliases, run `alias`.
alias zconf="nvim ~/.zshrc"
alias cp="cp -i"                          # confirm before overwriting something
alias ip='ip --color=auto'
alias df='df -h'                          # human-readable sizes

command -v nvim &> /dev/null && alias vi="nvim"

# Pretty colors
command -v lsd &> /dev/null && alias ls="lsd"
command -v bat &> /dev/null && alias cat='bat'

# move to a new directory using ranger
alias cdr='ranger --choosedir=$HOME/.config/ranger/rangerdir; LASTDIR=`cat $HOME/.config/ranger/rangerdir`; cd "$LASTDIR"'

# Youtube downloading
alias yt='youtube-dl --add-metadata -i'
alias yta='yt -x -f bestaudio/best'

# Piping access to the clipboard (requires xclip)
alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'
