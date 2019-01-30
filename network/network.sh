#! /bin/sh

echo -e "Local IP:\c"
ipconfig getifaddr en0
echo -e "Gateway:\c"
netstat -rn | grep default | grep en0 | awk '{print $2}'
echo -e "Public IP:\c"
curl icanhazip.com