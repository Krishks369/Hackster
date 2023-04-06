#!/bin/bash

banner()
{
  echo "+------------------------------------------+"	
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

while :
do
 count=`wc -l < ~/Desktop/$1/subdomains/subdomains.txt`


 
 #echo $1 | assetfinder | anew ~/Desktop/$1/subdomains/subdomains.txt > ~/Desktop/$1/subdomains/newSubdomains.txt 
 echo $1 | assetfinder > ~/Desktop/$1/subdomains/newSubdomains.txt
 
 newCount=`wc -l < ~/Desktop/$1/subdomains/newSubdomains.txt`

	
 #c=0
 c=-1
 
 if [ ${newCount} -gt ${c} ]
 then
    banner "going to test new subdomains......bye"
    ./notifyUser.sh $1
 fi

 echo "last scan done on $(date), will do next scan in an hour"
 sleep 3600

done
