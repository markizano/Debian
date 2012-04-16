#!/bin/bash

[ -z "$PS1" ] && return

shopt -s autocd checkjobs dirspell

export HISTCONTROL=ignoreboth
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

#PS1='\[\033[31m\]$$\[\033[0m\]|\[\033[33m\]$(date '+%F/%R:%S')\n\[\033[34m\]${USER}\[\033[01;33m\]@\[\033[00;32m\]${HOSTNAME}\[\033[01;30m\]:\[\033[00;35m\]\w\[\033[01;31m\]\$\[\033[00m\]';
PS1='\[\033[31m\]$$\[\033[0m\]|\[\033[33m\]$(date +%F/%R:%S)\[\033[01;35m\]$(tty)\[\033[0;0m\]\n\[\033[34m\]\u\[\033[01;33m\]@\[\033[00;32m\]\h\[\033[01;30m\]:\[\033[00;35m\]\w\[\033[01;31m\]\$\[\033[00m\]'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

[ -x /usr/bin/dircolors ] && eval "`dircolors -b`"
[ -f /etc/bash_completion ] && . /etc/bash_completion

# Appended by Markizano

# Force history to be written to disk after each command.
export PROMPT_COMMAND="history -a";
export PATH=${PATH}:/usr/games:.:/home/Media/Downloads/Droid/android-sdk-linux_x86/tools:/home/Media/Downloads/Droid/android-sdk-linux_x86/platform-tools
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

export path=$(echo $PATH|sed 's/:/ /g');
export BASHRC=1

[ -f $HOME/.profile ] && . ~/.profile
[ -f $HOME/.alias ] && . ~/.alias
[ -f $HOME/.run ] && . ~/.run
[ -f $HOME/.run_once ] && . ~/.run_once && rm ~/.run_once

