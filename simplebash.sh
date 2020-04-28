#!/bin/bash
#
echo "Hello World from Doc. You have deployed a simple Bash Script application."
hosttype=`uname -s`
nodename=`uname -n`
arch=`uname -m`
echo "The Server Name is:$nodename"
echo "The Server Type is:$hosttype"
echo "The Server Machine:$arch"
echo ""
for i in {1..2}
do
  date=`date`
  echo "The Server Time is:$date"
  sleep 8
done
  



