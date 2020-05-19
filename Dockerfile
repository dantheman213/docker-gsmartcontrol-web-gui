FROM jlesage/baseimage-gui:ubuntu-18.04

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME="smart-disk-check-suite"

RUN apt-get update && \
    apt-get -y install smartmontools gsmartcontrol

COPY rootfs/usr/bin/check-disks.sh /usr/bin/check-disks.sh
COPY rootfs/startapp.sh /startapp.sh

RUN mv /init /init.app
COPY rootfs/init /init

RUN chmod +x /usr/bin/check-disks.sh && \
    chmod +x /init
