#!/bin/bash

#set -x

pat=/usr/local/nagios/libexec


hdfs_rm=`awk -F':' '/hadoop/{print $4}' /etc/group | wc -l`
awk -F':' '/hadoop/{print $4}' /etc/group > $pat/users

if [ $hdfs_rm -eq 1 ]
then
echo "Hadoop group users are `cat $pat/users` "
exit 0
else
echo "Hadoop group does not have any users"
exit 2
fi


