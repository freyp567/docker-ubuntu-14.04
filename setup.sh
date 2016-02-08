#!/bin/bash

sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
echo "deb http://de.archive.ubuntu.com/ubuntu/ trusty main universe" >>/etc/apt/sources.list
echo "deb-src http://de.archive.ubuntu.com/ubuntu/ trusty main universe" >>/etc/apt/sources.list
echo "deb http://de.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >>/etc/apt/sources.list
echo "deb-src http://de.archive.ubuntu.com/ubuntu/ trusty-updates main universe" >>/etc/apt/sources.list

apt-get update && apt-get install -y ca-certificates sudo curl git-core

#dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl
# probably no longer required for Ubuntu 14.04
# see http://ubuntuforums.org/showthread.php?t=1997229

#sudo apt-get install language-pack-de
locale-gen  en_US.UTF-8
locale-gen  de_DE.UTF-8

