#!/bin/bash -e

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
export CONT_NAME=ros2_humble_container

sudo xhost +

echo "launch $CONT_NAME ..."
docker compose -f docker-compose-realsense.yml up -d
docker compose -f docker-compose-realsense.yml ps
echo -e "\n"
echo "ex. docker commands)"
echo " docker compose -f docker-compose-realsense.yml ps"
echo " docker compose -f docker-compose-realsense.yml down"
echo " docker exec -it $CONT_NAME bash"
echo " docker exec -it $CONT_NAME bash build.sh"
echo " docker exec -it $CONT_NAME bash run.sh"

