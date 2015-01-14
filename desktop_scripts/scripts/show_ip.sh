#!/usr/bin/env bash
echo "NETWORK STATUS"
echo "--------------"
echo "Ethernet" `ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
echo "Wlan0" `ifconfig wlan0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
echo `iwconfig wlan0 2>/dev/null|awk '/ESSID:/ {print $4}'|sed 's/addr://'`
echo "--------------"
read
