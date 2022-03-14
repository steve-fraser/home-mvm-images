#!/bin/bash
mkdir -p /mnt/plex
sudo mount -t nfs 192.168.7.67:/mnt/user/plex /mnt/plex
mkdir -p /mnt/appdata
sudo mount -t nfs 192.168.7.67:/mnt/user/appdata /mnt/appdata 
