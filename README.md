# smart-disk-check-suite

GSmartControl and S.M.A.R.T. disk checks in a Docker container targeted for headless Linux server

## Features

* `GSmartControl` GUI app running headless with VNC
* Script utilizing `smartmontools` will check all physical disks
  - Short test runs every day
  - Long test runs every month

## Getting Started

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

### Visit Website

http://localhost:36800/

## Development

```
docker build -t dantheman213/smart-disk-check-suite:latest .
```
