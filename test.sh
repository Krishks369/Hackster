#!/bin/bash


domain=$1

mkdir -p  ~/Desktop/$1/intel ~/Desktop/$1/intel/nuclei

banner()
{
  echo "+------------------------------------------+"	
  printf "|`tput bold` %-40s `tput sgr0`|\n" "$@"
  echo "+------------------------------------------+"
}

#httpscan
httpscan(){
banner " Checking for alive domains.."
cat ~/Desktop/$domain/subdomains/newSubdomains.txt | ~/go/bin/httprobe > ~/Desktop/$domain/intel/httprobe.txt 
a=`wc -l < ~/Desktop/$domain/intel/httprobe.txt `
banner "${a} alive domains found"
}
httpscan


scanner(){
banner "Started nuclei"

cat ~/Desktop/$domain/subdomains/newSubdomains.txt | nuclei  -o ~/Desktop/$domain/intel/nuclei/nuclei.txt

#cat ~/Desktop/$domain/intel/httprobe.txt | nuclei -t /home/kali/nuclei-templates/vulnerabilities/ -o ~/Desktop/$domain/intel/nuclei/nuclei.txt
#cat ~/Desktop/$domain/intel/httprobe.txt | nuclei -t /home/kali/nuclei-templates/file/ -o ~/Desktop/$domain/intel/nuclei/nuclei.txt

banner "Ended nuclei"
}
scanner

mkdir -p ~/Desktop/$domain/intel/wayback

banner "Finding files to exploit"

./wayback.sh $1










