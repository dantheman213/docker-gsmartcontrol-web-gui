# smart-disk-check-suite

GSmartControl and S.M.A.R.T. disk checks in a Docker container targeted for headless Linux server

## Features

* `GSmartControl` GUI app running headless with VNC
* Automated script utilizing `smartmontools` will run the follow tests on all physical disks connected to host
  - Test 1: Quick test to check for obvious defects that runs every day
  - Test 2: Extended test checks entire disk for issues, takes a long time to run, runs once every month

## Getting Started

This software is available on Docker Hub at [dantheman213/smart-disk-check-suite](https://hub.docker.com/repository/docker/dantheman213/smart-disk-check-suite).

### Pull Image and Run Container

```
docker run \
    --name smart-disk-check-suite \
    -d \
    --privileged \
    --user 0:0 \
    -e USER_ID=0 \
    -e GROUP_IP=0 \
    -p 36800:5800 \
    -p 36801:5900 \
    --restart unless-stopped \
    dantheman213/smart-disk-check-suite:latest
```

### Visit Web App

http://localhost:36800/

## Security

Make sure your network is protected and configured correctly as this app offers no security or protection on its own.

## Development

```
docker build -t dantheman213/smart-disk-check-suite:latest .
```
