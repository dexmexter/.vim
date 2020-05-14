#
# ~/.bashrc
#

# activate vi mode with <Escape>
set -o vi

# tab complete ignore case and completes if unique
set completion-ignore-case on
set show-all-if-ambiguous on

# no duplicates in history and append, don't overwrite
export HISTCONTROL=ingnoreboth:erasedups
shopt -s histappend

# Run neofetch if exists
command -v neofetch &> /dev/null && neofetch

# Add ~/.local/bin to PATH
mkdir -p $HOME/.local/bin/
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

# ~/ Clean-up:
export LESSHISTFILE="-"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME=".local/share"
export HISTFILE="$XDG_DATA_HOME/bash/history"

alias calcurse='calcurse -D "$XDG_CONFIG_HOME"/calcurse'
alias tmux='tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'

[[ $- != *i* ]] && return

## Less/Man colors ##
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # Bold (cyan)
export LESS_TERMCAP_me=$(tput sgr0) # End bold, blinking
export LESS_TERMCAP_so=$(tput bold; tput rev; tput setaf 3) # Stand out (yellow)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0) # End stand out
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 4) # Underline (blue)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0) # End underline

use_color=true

## Alias list ##
alias ls='ls -h --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias more='less'

# move to a new directory using ranger
alias cdr='ranger --choosedir=$HOME/.config/ranger/rangerdir; LASTDIR=`cat $HOME/.config/ranger/rangerdir`; cd "$LASTDIR"'

# Piping access to the clipboard (requires xclip)
alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# Luke Smith colors
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
