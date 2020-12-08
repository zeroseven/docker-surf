#!/bin/bash

#docker build --pull . -f php56/Dockerfile -t zeroseven07/docker-surf:php56 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php56 /tmp/test.sh && \
#docker build --pull . -f php70/Dockerfile -t zeroseven07/docker-surf:php70 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php70 /tmp/test.sh && \
#docker build --pull . -f php71/Dockerfile -t zeroseven07/docker-surf:php71 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php71 /tmp/test.sh && \
docker build --pull . -f php72/Dockerfile -t zeroseven07/docker-surf:php72 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php72 /tmp/test.sh && \
docker build --pull . -f php72-webpack/Dockerfile -t zeroseven07/docker-surf:php72-webpack && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php72-webpack /tmp/test.sh && \
docker build --pull . -f php73/Dockerfile -t zeroseven07/docker-surf:php73 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php73 /tmp/test.sh && \
docker build --pull . -f php74/Dockerfile -t zeroseven07/docker-surf:php74 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php74 /tmp/test.sh && \
docker build --pull . -f php80/Dockerfile -t zeroseven07/docker-surf:php80 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh zeroseven07/docker-surf:php80 /tmp/test.sh
