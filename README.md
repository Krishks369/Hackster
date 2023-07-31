# Hackster

This project is to create an automation script using bash scripting to check for
vulnerabilities in a given host. It is a script that can be used in bug bounties for
constant monitoring and alerting if vulnerabilities are found. It uses bash script
API’s to connect to various application like slack and discord to send alerts
about the vulnerabilities. There are various other creative functionalities that are
integrated to get a wholesome experience while using the script

List of tools used in this project  
  assetfinder  - https://github.com/tomnomnom/assetfinder  
  notify       - https://github.com/projectdiscovery/notify  
  nuclei       - https://github.com/projectdiscovery/nuclei  
  httprobe     - https://github.com/tomnomnom/httprobe  
  waybackurls  - https://github.com/tomnomnom/waybackurls    
  gf           - https://github.com/tomnomnom/gf  

## Usage example
 ```
   ./start.sh www.yt.com
```
## Output  
- It lists out the domains , and it scans every 1 hour , if any new subdomains is appears it notifies the user via discord server. 
- Notify package is used to send the new sub-domains to the user
<img width="308" alt="image" src="https://github.com/Krishks369/Hackster/assets/71367204/28cb393a-b619-4096-ba61-e8883c44a233">

 - Nuclei checks for the vulnerability in the urls, if any it notifies.  
 -  Wayback lists out the js files in the subdomains which can be exploited     
<img width="328" alt="image" src="https://github.com/Krishks369/Hackster/assets/71367204/92576185-0f1e-4c44-8ef6-f45b8c0f7020">  

- New subdomains will be listed in a folder called sathya.store in Desktop as default 

<img width="317" alt="image" src="https://github.com/Krishks369/Hackster/assets/71367204/e94e4891-5fdc-4b19-8386-8779f3fb3ea5">  

## Final Files with enumeration details 
![image](https://github.com/Krishks369/Hackster/assets/71367204/14b7454b-6e93-402a-98b3-78f9b94d90bb)




