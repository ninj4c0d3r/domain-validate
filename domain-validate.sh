#!/bin/bash
# 
# edit website.txt with domains.
#
echo '''


8888888b.                              d8b       888     888        888d8b     888        888            
888  "Y88b                             Y8P       888     888        888Y8P     888        888            
888    888                                       888     888        888        888        888            
888    888 .d88b. 88888b.d88b.  8888b. 88888888b.Y88b   d88P 8888b. 888888 .d88888 8888b. 888888 .d88b.  
888    888d88""88b888 "888 "88b    "88b888888 "88bY88b d88P     "88b888888d88" 888    "88b888   d8P  Y8b 
888    888888  888888  888  888.d888888888888  888 Y88o88P  .d888888888888888  888.d888888888   88888888 
888  .d88PY88..88P888  888  888888  888888888  888  Y888P   888  888888888Y88b 888888  888Y88b. Y8b.     
8888888P"  "Y88P" 888  888  888"Y888888888888  888   Y8P    "Y888888888888 "Y88888"Y888888 "Y888 "Y8888  
                                                                    By Jonatas Fil

'''
for domain in $(cat website.txt)
do
code=$(curl -L -s -o /dev/null -I -H "User-Agent: Googlebot/2.1 (+http://www.google.com/bot.html)" -w "%{http_code}" http://$domain)
if [[ $code == "200" || $code == "301" || $code == "403" || $code == "404" || $code == "503" ]]
then
echo "$domain"
fi
done
