#!/bin/bash

docker build \
    --tag torch-cuda-noconda:latest \
    --build-arg CUDA_VERSION=11.8.0 \
    --build-arg CUDA=11.8 \
    --build-arg CUDNN=8 \
    --build-arg PYTHON_VERSION=3.9 \
    --build-arg OS=ubuntu20.04 \
    --build-arg UID=$UID \
    --build-arg USER_NAME=user \
    .
    # --build-arg CONDA_ENV_NAME=torch \
    