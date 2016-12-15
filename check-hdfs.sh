#!/bin/bash

#set -x

pat=/usr/local/nagios/libexec
hdfs fsck /> $pat/chk

tail -1 $pat/chk >out
chk_2=`grep "HEALTHY" $pat/out | wc -l`

c=1

if [ $chk_2 == $c ]
then
echo "HDFS is healthy"
exit 0
else
echo "Critical - HDFS is corrupt !"
exit 2
fi


