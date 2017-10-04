# deCONZ dockerized

This Dockerfile uses the X virtual framebuffer or short Xvfb to run deCONZ which is needed to controll your RaspBee. You do not need to
have any kind of graphics adapter, a screen or any input device with this docker image.

## Requirements
* Raspberry PI 2 or 3
* RaspBee
* docker
* docker-compose
* git

## Usage

```
git clone https://github.com/razem-io/docker-deconz.git
cd docker-deconz
docker-compose up -d
```

Browse to ip-of-the-pi:8080 to access the web frontend of deCONZ and have a great light show!

## Update

```
git pull
docker-compose build
docker-compose up -d
```

## Known Issues
When the Raspberry shutsdown by loosing power you need to execute the following commands once restarted.

```
docker-compose down
docker-compose up -d
```

I do not yet know why but I execute a script once restarted which executes the commands above. I can live with that for now. 
If you find a solution please let me know by creating an issue!




