# Based on Debian
FROM debian:stretch-slim
MAINTAINER Gianmauro Cuccuru <gmauro@crs4.it>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install --no-install-recommends -q -y \
    apt-utils \
    python-pip \
    python-setuptools \
    python-wheel \
 && apt-get autoremove \
 && apt-get clean

EXPOSE 5555

RUN pip install flower

ENTRYPOINT ["flower"]

