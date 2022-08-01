#!/bin/bash
mkdir -p /mnt/plex
sudo mount -t nfs 192.168.0.16:/mnt/plex /mnt/plex
mkdir -p /mnt/appdata
sudo mount -t nfs 192.168.0.16:/mnt/appdata /mnt/appdata 
cp -R /mnt/appdata/sonarr /home/sonarr
cp -R /mnt/appdata/radarr /home/radarr
cp -R /mnt/appdata/qbittorrent /home/qbittorrent
cp -R /mnt/appdata/tautulli /home/tautulli

chmod 777 -R /home/sonarr
chmod 777 -R /home/radarr
chmod 777 -R /home/qbittorrent
chmod 777 -R /home/tautulli

(crontab -l 2>/dev/null; echo "*/10 * * * * /bin/bash /etc/init.d/sync.sh") | crontab -