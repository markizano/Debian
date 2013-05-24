#!/bin/bash

echo 'dead.';
exit 1;
[ "$UID" -neq 0 ] && exit "You must be root to execute this script.";

if [ -z "`echo $PATH|grep -iP markizano.bin`" ]; then
	PATH=.:$PATH:/home/markizano/bin
fi

tar -zcf /backup/apache_`date_mdY`.tgz /home/apache
tar -zcf /backup/home_`date_mdY`.tgz /home/asthralios /home/markizano /home/php /home/Iroch
tar -zcf /backup/HIT_`date_mdY`.tgz /home/HIT
tar -zcf /backup/Osash_`date_mdY`.tgz /home/Osash
tar -zcf /backup/Kebrauph_`date_mdY`.tgz /home/Kebrauph
tar -zcf /backup/K-Fx2_`date_mdY`.tgz /home/K-Fx2
tar -zcf /backup/etc_`date_mdY`.tgz /etc
