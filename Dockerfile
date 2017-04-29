FROM resin/rpi-raspbian:jessie

MAINTAINER Andreas Mahnke <mahnkong@gmx.de>

COPY files/tor/torrc /etc/tor/torrc

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes tor tor-arm tor-geoipdb

EXPOSE 9500

ENTRYPOINT ["tor"]

