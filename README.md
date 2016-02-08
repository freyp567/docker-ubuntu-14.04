# docker-ubuntu-14.04
ubuntu 14.04 base image with few adaptions

My Ubuntu 14.04 base image for Docker containers.

Adds a few things to the base Docker ubuntu image:

+ set Ubuntu apt repository (trusty universe)
+ add packages (curl, ...)
+ set locale to de_DE.UTF8 (german sort order, etc)

docker build -t freyp567/docker-ubuntu-14.04 .

updated 2016-02-08 

