FROM jlesage/baseimage-gui:ubuntu-18.04

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME="GSmartControl"

RUN apt-get update && \
    apt-get -y install -qq --force-yes cron && \
    apt-get install -y smartmontools gsmartcontrol

COPY rootfs/usr/bin/check-disks.sh /usr/bin/check-disks.sh
COPY rootfs/usr/bin/startapp.sh /startapp.sh
COPY rootfs/var/spool/cron/crontabs/root /var/spool/cron/crontabs/root
