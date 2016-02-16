# docker-ubuntu-14.04

FROM ubuntu:14.04
MAINTAINER FreyP567 <freyp567@googlemail.com>
ENV DEBIAN_FRONTEND noninteractive

#RUN sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
#RUN echo "deb http://de.archive.ubuntu.com/ubuntu/ trusty main universe" >>/etc/apt/sources.list
#RUN echo "deb-src http://de.archive.ubuntu.com/ubuntu/ trusty main universe" >>/etc/apt/sources.list
#RUN echo "deb http://de.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >>/etc/apt/sources.list
#RUN echo "deb-src http://de.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >>/etc/apt/sources.list

RUN apt-get update && apt-get install -y ca-certificates sudo curl git-core

#RUN sudo apt-get install language-pack-de
#RUN locale-gen  en_US.UTF-8
RUN locale-gen  de_DE.UTF-8

ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE.UTF-8
ENV LC_ALL de_DE.UTF-8 

