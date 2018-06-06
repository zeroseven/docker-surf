#!/bin/bash

docker build --pull . -f php56/Dockerfile -t akoehnlein/surf:php56 && \
docker build --pull . -f php70/Dockerfile -t akoehnlein/surf:php70 && \
docker build --pull . -f php71/Dockerfile -t akoehnlein/surf:php71 && \
docker build --pull . -f php72/Dockerfile -t akoehnlein/surf:php72
