#! /bin/bash

#apt-get update -y
#apt-get install -y inotify-tools

mkdir /opt/yubikey_lock
touch /opt/yubikey_lock/state
mkdir /etc/yubikey_lock

cp files/yubikey_lock.cfg /etc/yubikey_lock
cp files/monitor.sh /opt/yubikey_lock
