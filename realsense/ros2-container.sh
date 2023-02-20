#!/bin/bash -e

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
export CONT_NAME=realsense-container

sudo xhost +

echo "launch $CONT_NAME ..."
docker compose up -d
docker compose ps
echo -e "\n"
echo "ex. docker commands)"
echo " docker compose down"
echo " docker exec -it $CONT_NAME bash"
echo -e "\n"
echo " python examples => https://github.com/IntelRealSense/librealsense/tree/master/wrappers/python/examples"

