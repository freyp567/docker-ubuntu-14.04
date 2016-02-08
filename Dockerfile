# docker-ubuntu-14.04

FROM ubuntu:14.04
MAINTAINER FreyP567 <freyp567@googlemail.com>
ENV DEBIAN_FRONTEND noninteractive
ADD setup.sh /tmp/setup.sh
RUN /bin/bash /tmp/setup.sh

ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE.UTF-8
ENV LC_ALL de_DE.UTF-8 

