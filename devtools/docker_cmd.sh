tag="nvcr.io/nvidia/theano:18.08"
rootdir=`pwd`/..
nvidia-docker run --privileged=true  -e DISPLAY  --net=host --ipc=host -it --rm  -p 7022:22 -p 5022:5022 \
     -v $HOME/.Xauthority:/home/nvidia/.Xauthority \
     -v $rootdir:$rootdir \
     -v /raid/tools:/raid/tools \
     -w `pwd`  \
     $tag /bin/bash

