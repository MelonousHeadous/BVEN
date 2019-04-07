FROM debian:stretch
LABEL maintainer="BitcoinVenezuela Developers <dev@bitcoinvenezuela.org>"
LABEL description="Dockerised BitcoinVenezuelaCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
