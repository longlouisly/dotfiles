# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PS1='$ '

# turn off caplocks because annoying in vim
setxkbmap -option ctrl:nocaps

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias shut='sudo pm-hibernate'


