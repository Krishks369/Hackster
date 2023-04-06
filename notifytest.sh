#!/bin/bash

while :
do
 count=`wc -l < subdomains.txt`
 echo ${count}
 
 echo $1 | assetfinder | anew subdomains.txt 
 
 newCount=`wc -l < subdomains.txt`
 echo ${newCount}
 
 if [ count != newCount ]
 then
    echo "going to test new subdomains......bye"
    ./notifyUser 
fi

 sleep 3600
 
done
