FROM jlesage/baseimage-gui:ubuntu-18.04

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME="gsmartcontrol"

RUN apt-get update && \
    apt-get -y install smartmontools gsmartcontrol

COPY startapp.sh /startapp.sh
