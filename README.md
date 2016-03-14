# yubikey_lock

A simple mechanism for hooking the presence of a configured Yubikey, and executing a command at insert/removal. I myself use it to trigger the lock mechanism in Microcentillion/ubuntu-lukssuspend.

## Usage

- Clone
- Run ./install.sh
- Modify /etc/yubikey_lock/yubikey_lock.cfg as appropriate
- Execute /opt/yubikey_lock/monitor.sh

## Future intent

I intend to wrap this in a service at some point, so that there's no need to run it manually.
