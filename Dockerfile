FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Mahnke <mahnkong@gmx.de>


RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tor tor-arm tor-geoipdb

COPY files/tor/torrc /etc/tor/torrc
EXPOSE 9050

ENTRYPOINT ["tor"]

