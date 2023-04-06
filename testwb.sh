#!/bin/bash

domains=$1

wayback_data(){

cat ~/Desktop/$domain/subdomains/newSubdomains.txt | waybackurls > ~/Desktop/$domain/intel/wayback/tmp.txt

cat $domain/intel/wayback/tmp.txt | egrep -v "\.woff|\.png|\.svg|\.jpg|\.jpeg|\.css|\.ico|\.ttf" | sed 's/:80//g,s/:443//g' | sort -u > $domain/intel/wayback/wayback.txt

}
