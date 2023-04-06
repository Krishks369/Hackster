#!/bin/bash

domain=$1
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'
banner()
{
  echo "+------------------------------------------+"	
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}


wayback_data(){
waybackurls $domain > ~/Desktop/$domain/intel/wayback/tmp.txt 

cat ~/Desktop/$domain/intel/wayback/tmp.txt | egrep -v "\.woff|\.png|\.svg|\.jpg|\.jpeg|\.css|\.ico|\.ttf|\.gif" | sed 's/:80//g;s/:443//g' | sort -u > ~/Desktop/$domain/intel/wayback/wayback.txt

rm ~/Desktop/$domain/intel/wayback/tmp.txt 
}
wayback_data

mkdir -p ~/Desktop/$domain/recon

echo "exploitable files are found"

banner " Now trying to find web-based vulnerabilities"

gf_patterns(){
gf xss ~/Desktop/$domain/intel/wayback/wayback.txt > ~/Desktop/$domain/recon/xss.txt

gf rce ~/Desktop/$domain/intel/wayback/wayback.txt > tee ~/Desktop/$domain/recon/rce.txt

gf ssrf ~/Desktop/$domain/intel/wayback/wayback.txt > tee ~/Desktop/$domain/recon/ssrf.txt

gf lfi ~/Desktop/$domain/intel/wayback/wayback.txt > tee ~/Desktop/$domain/recon/lfis.txt
}
gf_patterns

banner "Web vulnerabilites recon is completed"

echo " "
echo "$Green Scan complete, all the recon files are in Desktop/${domain} folder"
echo "$Red Happy Hunting"
