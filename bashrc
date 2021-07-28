if [ -f ~/.bashrc.orig ]; then
    source ~/.bashrc.orig
fi

HISTSIZE=1048576
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE
shopt -s histappend # append to history file

# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

export EDITOR=vim

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

