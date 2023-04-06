#!/bin/bash
banner()
{
  echo "+------------------------------------------+"	
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

cat ~/Desktop/$1/subdomains/newSubdomains.txt | notify

banner "notified on discord Now starting vulnerability scanning on new subdomains"

./test.sh $1
