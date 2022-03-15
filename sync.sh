#!/bin/bash
rclone sync /home/sonarr /mnt/appdata/sonarr
rclone sync /home/radarr /mnt/appdata/radarr
rclone sync /home/qbittorrent /mnt/appdata/qbittorrent
rclone sync /home/tautulli /mnt/appdata/tautulli