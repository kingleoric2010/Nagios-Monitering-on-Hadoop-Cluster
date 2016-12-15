#!/bin/bash

#set -x

pat=/usr/local/nagios/libexec
hdsf dsfadmin -safemode get > $pat/test1

tail -1 $pat/test1 > $pat/out1
chk_1=`grep "OFF" $pat/out1 | wc -l`

b=1

if [ $chk_1 == $b ]
then
echo "Hadoop Safemode OFF"
exit 0
else
echo "Hadoop Safemode ON"
exit 2
fi


