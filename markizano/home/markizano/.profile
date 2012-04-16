#!/bin/bash

# ROOT
export Kebrauph=/home/Kebrauph/

# Markizano.NET
export Markizano_NET=/home/Kebrauph/Asthralios.NET/
export Asthralios_NET=$Markizano_NET
export ASTHRALIOS_NET="$(grep -vE '^#' /etc/hosts | grep asthralios.net | head -n1 | sed -re 's/\s+/ /g' -e 's/\s*$//' | cut -d\  -f1)";
export Code=${Markizano_NET}Code/
export Story=${Markizano_NET}Story/

# MSCD
export MSCD=$Kebrauph\Education/MSCD/
export HIS1220=$MSCD\Classes/HIS1220/
export PSY1001=$MSCD\Classes/PSY1001/
export ECO1060=$MSCD\Classes/ECO1060/
export CS1050=$MSCD\Classes/CS1050/
export CS2050=$MSCD\Classes/CS2050/
export CIS1010=$MSCD\Classes/CIS1010/
export ENG1010=$MSCD\Classes/ENG1010/
export MTH1310=$MSCD\Classes/MTH1310/

# Phoenix.edu
export Phoenix=$Kebrauph\Education/Phoenix.edu/Classes/

# Projects
export Proj=$Kebrauph\Projects/
	export Mod_mxml=$Proj\Mod.mxml/
	export Mod_xui=$Proj\Mod.xui/
	export Mod_VB6=$Proj\Mod.VB6/
	export Mod_VB_NET=$Proj\Mod.VB.NET/
	export Mod_js=$Proj\Mod.js/
	export Mod_css=$Proj\Mod.css/
	export Mod_php=$Proj\Mod.php/
	export Mod_c=${Proj}Mod.C/
	export Mod_Cpp=$Proj\Mod.C++/
	export Mod_mono=$Proj\Mod.mono/
	export Mod_java=$Proj\Mod.java/
	export Mod_pl=$Proj\Mod.pl/
	export Mod_py=$Proj\Mod.py/
	export Mod_droid=${Proj}Mod.droid/
	export no302=$Mod_pl\no302.pl

	export ktmp=$Kebrauph\tmp/
	export Pics=$Kebrauph\Media/Pics/
	export pwdb=$Kebrauph\Projects/Mod.VB6/Encryption/Password.Database/pw.db/
	export pw_db=$pwdb\pw.db
	export Mod_mxml_template=$Mod_mxml\mxml/template.mxml
	export FLEX_HOME=/usr/lib/flex

# K-Fx^2
export kfx=/home/Kebrauph/Employment/K-Fx2/
export kfx_bcbs=${kfx}projects/goodhealthclub.com/htdocs/
export kfx_past=${kfx}projects/pastimerestaurant.com/htdocs/
export kfx_sch=${kfx}projects/schlittz.com/htdocs/
export kfx_quickbase=${kfx}projects/quickbase.com/htdocs/

# W3Evolutions
export w3='/home/Kebrauph/Employment/w3evolutions/projects/'
export w3nature="${w3}naturestonefloors/public_html/"
export w3boost="${w3}boostcm/public_html/"
export w3tutor="${w3}tutors/public_html/";
export w3burr="${w3}burrridgehotels/";
export w3skel="${w3}skeleton/";

# SiteLock
export bitdefender=/home/apache/git/sitelock/bitdefender;
export libperl='/usr/local/share/perl/5.10.0';

t=Text
# RegExp Constants
export findFF="\`ps -A|grep firefox|grep -o \"[0-9]\{4,6\}\"\`";
export no_repeat_dir='./(.*)\n./\1/.*'
export is_prime='^1?$|^(11+?)\1+$';
export dpkg='^ii\s*[0-9a-z_\-\.]*';
export dirlist='/-rwxrwxrwx\s1\s%s\s%s\s+(\d+)\s2011-01-(\d\d)\s(\d\d:\d\d)\s(\d+)/';
export headers='%s %s HTTP/1.1\nHost: %s\nAccept:text/html,application/xhtml+xml\nAccept-Charset: utf-8\nAccept-Encoding:chunked\nConnection: close\n';

# Bookmarked Locations
export Template=/home/Kebrauph/Asthralios.NET/htdocs/Template.html
export downloads=/home/Media/Downloads/
export torrents=${downloads}files/
export Music=/home/Media/Music/
export Videos=/home/Media/Videos/
export conf=/etc/apache2/webdev/
export log=/var/log/apache2/
export social=${Markizano_NET}htdocs/SocialMedia/
export Crypt=${Mod_php}/Crypt/INI/
export Osash=/home/Osash/client/
export Osash_server=/home/Osash/server/
export public=/home/apache/public/
export Phergie=/home/apache/git/elazar/Phergie/
export XAMPP=/home/XAMPP/src/
export Movies=${Videos}Movies/
export git=/home/apache/git/markizano/
export zf_sample=${git}zf-sample.git/
export lgbt=${git}lgbtsupport.git/
export aqua=/home/apache/webtest/AquaPHP/
export dev=/home/dev.integraclick.com/development/staff.clickbooth.com/

# MISC
export EDITOR=leafpad
export VISUAL=nano
export IRCNICK=markizano
export LEDGER_FILE=/home/Kebrauph/Finance/ledger.dat
export GREP_OPTIONS='--exclude-dir .svn --exclude-dir .git --color=auto --binary-files=without-match'

# SVN
export SVN_BASH_KEYWORDS=author:date:eol-style:executable:externals:ignore:keywords:log:mime-type:needs-lock

# Methods
threat_scanner-stdin () { echo -n 'call ThreatScanner_ScanObjectByHandle( thread_info->threat_scanner, (void*)thread_info->filedesc, thread_info->file_template, 0, scanStatus, threatType, (const CHAR_T**)threatInfo, getpid() )'; }
threat_scanner-file () { echo -n 'call ThreatScanner_ScanObject( thread_info->threat_scanner, OBJECT_TYPE_FILE, thread_info->file_template, 0, scanStatus, threatType, (const CHAR_T**)&threatInfo, getpid(), thread_info->file_template )'; }
throw_random () { head -c81920 /dev/urandom | base64 -w0; }

# Done
echo "Environment has been set."

#:EOF
if [ -z $BASHRC ]; then
	. ~/.bashrc
fi
ns='/home/Kebrauph/Employment/w3evolutions/projects/ns'
export GIR=/home/apache/git/CptnKickass/GIR
