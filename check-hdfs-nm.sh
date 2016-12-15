#!/bin/bash

#set -x

#pat=/usr/local/nagios/libexec


hdfs_nm=`ps -fu hdfs | head -1 | grep UID | wc -l`


if [ $hdfs_nm -eq 1 ]
then
echo "Hadoop Node manager is running"
exit 0
else
echo "Hadoop Node manager is not running"
exit 2
fi


