# docker-gsmartcontrol-web-gui

GSmartControl and S.M.A.R.T. disk checks on a headless Linux server

## Getting Started

```
docker run \
    --name gsmartcontrol \
    -d \
    --privileged \
    --user 0:0 \
    -e USER_ID=0 \
    -e GROUP_IP=0 \
    -p 36800:5800 \
    -p 36801:5900 \
    --restart unless-stopped \
    dantheman213/gsmartcontrol-web-gui:latest
```

http://localhost:36800/

## Development

```
docker build -t dantheman213/gsmartcontrol-web-gui:latest .
```
