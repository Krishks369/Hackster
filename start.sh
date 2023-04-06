#!/bin/bash

figlet Hakscript

banner()
{
  echo "+------------------------------------------+"
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}


banner "starting to find subdomains"

mkdir -p ~/Desktop/$1 ~/Desktop/$1/subdomains/
 
assetfinder $1 > ~/Desktop/$1/subdomains/subdomains.txt 

banner "finished finding basic subdomains"

./testif.sh $1




