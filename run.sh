#!/bin/bash

docker run -it \
	--name=torch-env-noconda \
    --gpus=all \
    --ipc=host \
    -v=/tmp/.X11-unix:/tmp/.X11-unix:rw \
	-v=/home/$USER/hdd/ws:/home/$USER/ws \
	-v=/home/$USER/hdd/dataset:/home/$USER/dataset \
	-v=/home/$USER/hdd/git:/home/$USER/git \
	-e=DISPLAY=unix$DISPLAY \
    -w=/home/$USER \
    torch-cuda-noconda:latest \
    /bin/bash