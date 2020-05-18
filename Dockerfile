FROM jlesage/baseimage-gui:ubuntu-18.04

ENV DEBIAN_FRONTEND noninteractive
ENV APP_NAME="GSmartControl"

RUN apt-get update && \
    apt-get install -y gsmartcontrol

COPY startapp.sh /startapp.sh
