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

PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

export EDITOR=vim

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

