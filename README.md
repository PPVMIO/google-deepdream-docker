## README

This is a quick start tutorial for google's deep dream visuals project built with caffe

## Links

- [caffee docker](https://github.com/BVLC/caffe/tree/master/docker)
- [google deep dream](https://github.com/google/deepdream/blob/master/dream.ipynb)

## Prerequisite

Install [docker-ce for mac](https://download.docker.com/mac/stable/Docker.dmg) - link to installation page is [here](https://docs.docker.com/docker-for-mac/install/)


## Getting Started

    git clone https://github.com/ppelayo/google-deepdream-docker.git

Unzip bvlc_googlenet.caffemodel.zip and place the bvlc_googlenet.caffemodel in the /google-deepdream-docker folder

    docker build . -t <image name>
    docker run -p 127.0.0.1:8887:8888 <name of image>