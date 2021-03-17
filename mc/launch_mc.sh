#!/bin/sh
echo "Starting Minecraft"
cd /minecraft
screen -A -m -d -S minecraft java -Xms6G -Xmx6G -jar server.jar nogui

sleep 5
exec tail -F /minecraft/logs/latest.log
