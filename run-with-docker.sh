#!/bin/bash

DIR_PATH=$(cd $(dirname “${BASH_SOURCE:-$0}”) && pwd)

docker run --gpus all -it --volume $DIR_PATH/src:/tf/ --rm -p 8888:8888 tensorflow/tensorflow:latest-gpu-jupyter
