#!/bin/bash

[ -z "$PS1" ] && return

shopt -s autocd checkjobs dirspell extglob

export DATEFORMAT='%F/%R:%S';
export HISTCONTROL=ignoreboth
export HISTFILE=$HOME/.history
export HISTFILESIZE=40960
export HISTSIZE=4096
export HISTTIMEFORMAT="$DATEFORMAT"

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export TTY=`tty`;
export PS1='\[\033[31m\]$$\[\033[0m\]|\[\033[33m\]$(date +"$DATEFORMAT")\[\033[01;35m\]$TTY'\
'\[\033[0;0m\]$(loadavg)\n\[\033[34m\]\u\[\033[01;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:'\
'\[\033[00;35m\]\w\[\033[01;31m\]\$\[\033[00m\]'

[ -x /usr/bin/dircolors ] && eval "`dircolors -b`"
[ -f /etc/bash_completion ] && . /etc/bash_completion

# Appended by Markizano

# Force history to be written to disk after each command.
export PROMPT_COMMAND="history -a";
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:.

[ -d ~/bin ] && PATH=$PATH:~/bin
[ -d /opt/metasploit/sbin ] && PATH=$PATH:/opt/metasploit/sbin
[ -d /opt/metasploit/bin ] && PATH=$PATH:/opt/metasploit/bin

if [ -n "$PENTEST" ]; then
	if [ -d /pentest ]; then
		for pentest in $(ls -1d /pentest/*); do
			for crack in $(ls -1d $pentest/*); do
				PATH=$PATH:$crack;
			done;
		done;
	fi
fi

export BASHRC=1

[ -f $HOME/.profile ] && . ~/.profile
[ -f $HOME/.alias ] && . ~/.alias
[ -f $HOME/.run ] && . ~/.run
[ -f $HOME/.run_once ] && . ~/.run_once && rm ~/.run_once

