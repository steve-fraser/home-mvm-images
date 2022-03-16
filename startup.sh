#!/bin/bash
mkdir -p /mnt/plex
sudo mount -t nfs 192.168.7.67:/mnt/user/plex /mnt/plex
mkdir -p /mnt/appdata
sudo mount -t nfs 192.168.7.67:/mnt/user/appdata /mnt/appdata 
cp -R /mnt/appdata/sonarr /home/sonarr
cp -R /mnt/appdata/radarr /home/radarr
cp -R /mnt/appdata/qbittorrent /home/qbittorrent
cp -R /mnt/appdata/tautulli /home/tautulli
(crontab -l 2>/dev/null; echo "*/10 * * * * /bin/bash /etc/init.d/sync.sh") | crontab -