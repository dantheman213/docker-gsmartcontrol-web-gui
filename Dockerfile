FROM jlesage/baseimage-gui:ubuntu-18.04

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME="smart-disk-check-suite"

RUN apt-get update && \
    apt-get -y install -qq --force-yes cron smartmontools gsmartcontrol nano

COPY rootfs/usr/bin/check-disks.sh /usr/bin/check-disks.sh
COPY rootfs/usr/bin/startapp.sh /startapp.sh
COPY rootfs/var/spool/cron/crontabs/root /var/spool/cron/crontabs/root

RUN chmod +x /usr/bin/check-disks.sh && \
    touch /etc/crontab /etc/cron.*/*

RUN update-rc.d cron enable
