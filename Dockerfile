FROM ghcr.io/weaveworks/capmvm-kubernetes:1.21.8

RUN apt update &&  apt install -y nfs-common

# RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
#     && unzip rclone-current-linux-amd64.zip \
#     && cd rclone-*-linux-amd64 \
#     && cp rclone /usr/bin/ \
#     && chown root:root /usr/bin/rclone \
#     && chmod 755 /usr/bin/rclone
ADD startup.sh /etc/init.d/startup.sh
ADD chmod +x /etc/init.d/startup.sh
