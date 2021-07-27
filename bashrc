HISTSIZE=1048576
HISTFILE="$HOME/.bash_history"
SAVEHIST=$HISTSIZE
shopt -s histappend # append to history file

export EDITOR=vim

if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

