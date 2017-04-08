from resin/rpi-raspbian:jessie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade && \
    apt-get install wget curl xvfb xauth libqt4-core libqtgui4 iputils-ping iproute2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://www.dresden-elektronik.de/rpi/deconz/deconz-2.04.18.deb && \
    dpkg -i deconz-2.04.35.deb && \
    rm *.deb

VOLUME ["/root/otau", "/root/.local"]
CMD xvfb-run deCONZ-autostart.sh
