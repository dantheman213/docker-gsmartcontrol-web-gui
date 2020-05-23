# gsmartcontrol-headless

GSmartControl in a Docker container targeted for headless Linux server.

## Getting Started

This software is available on Docker Hub at [dantheman213/gsmartcontrol-headless](https://hub.docker.com/repository/docker/dantheman213/gsmartcontrol-headless).

### Pull Image and Run Container

```
docker run \
    --name gsmartcontrol-headless \
    -d \
    --privileged \
    --user 0:0 \
    -e USER_ID=0 \
    -e GROUP_IP=0 \
    -p 36800:5800 \
    -p 36801:5900 \
    --restart always \
    dantheman213/gsmartcontrol-headless:latest
```

### Using Application

#### Web

http://localhost:36800/

#### VNC

Use port 36801 and consult dependency project [jlesage/baseimage-gui](https://hub.docker.com/r/jlesage/baseimage-gui/) for documentation on setting username and password.

## Security

Make sure your network is protected and configured correctly as this app offers no security or protection on its own.

## Development

```
docker build -t dantheman213/gsmartcontrol-headless:latest .
```
