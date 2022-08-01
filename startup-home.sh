#!/bin/bash
mkdir -p /mnt/plex
sudo mount -t nfs 192.168.0.16:/mnt/plex /mnt/plex 
mkdir -p /mnt/appdata
sudo mount -t nfs 192.168.0.16:/mnt/appdata /mnt/appdata 