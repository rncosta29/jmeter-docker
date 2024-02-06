#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmetertest"
IMAGE="justb4/jmeter:latest"
ROOTPATH=$1

echo "$ROOTPATH"
# Finally run
sudo docker stop $NAME
sudo docker rm $NAME
sudo docker run --name $NAME -i -v $ROOTPATH -w $ROOTPATH/bot $IMAGE ${@:2}
#echo $pwd
