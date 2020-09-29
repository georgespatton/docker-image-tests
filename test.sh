#!/bin/bash

#Make sure docker is running, assumes systemd
sudo systemctl start docker

#Pull our three candidates
sudo docker pull ubuntu:18.04
sudo docker pull ubuntu:20.04
sudo docker pull alpine:3.12.0

#Show original image sizes
sudo docker images ubuntu:18.04
sudo docker images ubuntu:20.04
sudo docker images alpine:3.12.0

#Build simple ubuntu 18.04 test image
cd ubuntu-18-04
sudo docker build --tag ubuntu:18.04-test . 
cd ..

#Build simple ubuntu 20.04 test image
cd ubuntu-20-04
sudo docker build --tag ubuntu:20.04-test .
cd ..

#Build simple alpine 3.12.0 test image
cd alpine-3-12-0
sudo docker build --tag alpine:3.12.0-test .
cd ..

#Show resultant images
sudo docker images ubuntu:18.04-test
sudo docker images ubuntu:20.04-test
sudo docker images alpine:3.12.0-test

