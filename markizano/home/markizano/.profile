#!/bin/bash

# Shell Config
export DATEFORMAT='%F/%R:%S';
export HISTTIMEFORMAT="$DATEFORMAT"
export HISTCONTROL=ignoredups
export HISTFILE=$HOME/.history
export HISTFILESIZE=40960
export HISTSIZE=4096
export TMPDIR=/tmp/markizano

export EDITOR=leafpad
export VISUAL=nano
export IRCNICK=markizano
export GREP_OPTIONS='--exclude-dir .svn --exclude-dir .git --color=auto --binary-files=without-match'

# Force history to be written to disk after each command.
export PROMPT_COMMAND="history -a; echo -en \"\033[36m$?\033[0m\"";
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

# Bookmarked Filesystem Locations
export public=/home/apache/public
export git=/home/apache/git/markizano


# RegExp Constants
export findFF="\`ps -A|grep firefox|grep -o \"[0-9]\{4,6\}\"\`";
export no_repeat_dir='./(.*)\n./\1/.*'
export is_prime='^1?$|^(11+?)\1+$';
export dpkg='^ii\s*[0-9a-z_\-\.]*';
export dirlist='/-rwxrwxrwx\s1\s%s\s%s\s+(\d+)\s2011-01-(\d\d)\s(\d\d:\d\d)\s(\d+)/';
export headers='%s %s HTTP/1.1\nHost: %s\nAccept:text/html,application/xhtml+xml\nAccept-Charset: utf-8\nAccept-Encoding:chunked\nConnection: close\n';

# SVN
export SVN_BASH_KEYWORDS=author:date:eol-style:executable:externals:ignore:keywords:log:mime-type:needs-lock

# Methods
throw_random () { head -c81920 /dev/urandom | base64 -w0; }

# Done
echo "Environment has been set."

#:EOF
if [ -z "$BASHRC" ]; then
	. ~/.bashrc
fi

