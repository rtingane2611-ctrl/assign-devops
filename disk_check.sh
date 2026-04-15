#!/bin/bash

disk=$(df -h / |awk 'NR==2 {print $5}' | sed 's/%//')

echo "disk usage is: $disk%"

if [ $disk -gt 80 ]
then
   echo "warning: disk almost full"
else
   echo "disk is ok"
fi
