FROM ghcr.io/weaveworks/capmvm-kubernetes:1.21.8

RUN apt update &&  apt install -y nfs-common
RUN apt update &&  apt install -y unzip

RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
    && unzip rclone-current-linux-amd64.zip \
    && cd rclone-*-linux-amd64 \
    && cp rclone /usr/bin/ \
    && chown root:root /usr/bin/rclone \
    && chmod 755 /usr/bin/rclone

RUN  apt update && apt-get install -y cron
RUN  systemctl enable cron.service

ADD startup.sh /etc/init.d/startup.sh
RUN chmod +x /etc/init.d/startup.sh
ADD startup.service /etc/systemd/system/startup.service
RUN systemctl enable startup.service

ADD sync.sh /etc/init.d/sync.sh
RUN chmod +x /etc/init.d/sync.sh