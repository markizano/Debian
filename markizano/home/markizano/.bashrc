#!/bin/bash

[ -z "$PS1" ] && return

shopt -s checkjobs dirspell extglob histappend huponexit checkhash cmdhist

if [ ${BASH_VERSION:0:1} -ge 4 ]; then
    shopt -s autocd historeedit
fi

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export TTY=`tty`;
export PS1='\[\033[31m\]$$\[\033[0m\]|\[\033[33m\]$(date +"$DATEFORMAT")\[\033[01;35m\]$TTY'\
'\[\033[0;0m\]$(loadavg)\n\[\033[34m\]\u\[\033[01;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:'\
'\[\033[00;35m\]\w\[\033[01;31m\]\$\[\033[00m\]'

[ -x /usr/bin/dircolors ] && eval "`dircolors -b`"
[ -f /etc/bash_completion ] && . /etc/bash_completion

export BASHRC=1

[ -f $HOME/.profile ] && . ~/.profile
[ -f $HOME/.alias ] && . ~/.alias
[ -f $HOME/.run ] && . ~/.run
[ -f $HOME/.run_once ] && . ~/.run_once && rm ~/.run_once

