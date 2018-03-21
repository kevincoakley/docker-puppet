#!/bin/sh

DOCKER_OUTPUT=`docker run --name centos7-puppet -ti kevincoakley/centos7-puppet /opt/puppetlabs/bin/puppet --version`

echo $DOCKER_OUTPUT

if [[ $DOCKER_OUTPUT == *"4.10.10"* ]];
then
    exit 0;
else
    exit 1;
fi