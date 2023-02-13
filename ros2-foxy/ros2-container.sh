#!/bin/bash -e

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
export CONT_NAME=ros2_foxy_container

echo "launch $CONT_NAME ..."
docker compose up -d
docker compose ps
echo -e "\n"
echo "ex. docker commands)"
echo " docker compose down"
echo " docker exec -it $CONT_NAME bash"
echo " docker exec -it $CONT_NAME bash build.sh"
echo " docker exec -it $CONT_NAME bash run.sh"

