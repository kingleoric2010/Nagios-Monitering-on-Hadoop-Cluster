#!/bin/bash

set -x

pat=/usr/local/nagios/libexec

hfs=`hdfs dfs -du /user | awk '/^[0-9]+/ { print int($1/(1024)) " [KB]\t" $2 }'`

ret_code=$?

if [ $ret_code -eq 0 ]
then
echo " Hadoop Filesystem has $hfs KB Data"
exit 0
else
echo "Check Filesystem failed, Please check Hadoop status"
exit 2
fi


