#!/bin/bash

source /etc/yubikey_lock/yubikey_lock.cfg

if [ $(pidof pcsc_scan) ]; then
   echo pcsc_scan is running
else
   pcsc_scan -n > /opt/yubikey_lock/cardscan.txt &
fi

while inotifywait /opt/yubikey_lock/cardscan.txt
do
   PRESENT=$(ykinfo -s | grep "$CARDID" | wc -l)

   if [ $PRESENT -eq 1 ]; then
      echo "Card inserted" > /opt/yubikey_lock/state
      $INSERTCOMMAND
   else
      echo "Card removed" > /opt/yubikey_lock/state
      $REMOVECOMMAND
   fi
done
