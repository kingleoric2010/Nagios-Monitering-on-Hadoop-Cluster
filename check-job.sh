#!/bin/bash

#set -x

pat=/usr/local/nagios/libexec
 
hdfs_m=`mapred job -list |  awk '{print $1}'`
map_check=`mapred job -list |grep JobId |  awk '{print $1}' | wc -l`

if [ $map_check -gt 0 ]
then
echo "Mapred jobs are running which are $hdfs_m "
exit 0
else
echo "Hadoop jobs are not running"
exit 2
fi


