# docker-gsmartcontrol-web-gui

GSmartControl and S.M.A.R.T. disk checks on a headless Linux server

## Getting Started

```
docker run --privileged -p 36800:5800 -p 36801:5900 dantheman213/gsmartcontrol-web-gui:latest
```

http://localhost:36800/

## Development

```
docker build -t dantheman213/gsmartcontrol-web-gui:latest .
```
