#!/bin/bash

## Ubuntu is running a serial console service which allows
## to login via the serial console. However, we the ZWave
## board needs to use the same port, which means that we
## need to disable this service

# Stop the serial console service on ttyAMA0
TTY_SERVICE=serial-getty@ttyAMA0.service
sudo systemctl status $TTY_SERVICE
sudo systemctl stop $TTY_SERVICE
sudo ps -elf | grep 'agetty'

# Restart the ZWave-Server
sudo /etc/init.d/z-way-server stop
sudo /etc/init.d/z-way-server start
