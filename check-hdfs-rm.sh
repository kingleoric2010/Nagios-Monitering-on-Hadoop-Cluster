#!/bin/bash

#set -x

#pat=/usr/local/nagios/libexec


hdfs_rm=`ps -fu yarh | head -1 | grep UID | wc -l`


if [ $hdfs_rm -eq 1 ]
then
echo "Hadoop Resource manager is running"
exit 0
else
echo "Hadoop Resource manager is not running"
exit 2
fi


