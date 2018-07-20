#!/bin/bash

IMAGE_NAME=$1
CONTAINER_NAME=$2

sudo docker stop $CONTAINER_NAME 
sudo docker rm $CONTAINER_NAME
npm run build
sudo docker build -t $IMAGE_NAME -f Dockerfile2 .
sudo docker run --name $CONTAINER_NAME -p 80:80  $IMAGE_NAME
