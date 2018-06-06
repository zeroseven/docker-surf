#!/bin/bash

docker build --pull . -f php56/Dockerfile -t akoehnlein/surf:php56 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/surf:php56 /tmp/test.sh && \
docker build --pull . -f php70/Dockerfile -t akoehnlein/surf:php70 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/surf:php70 /tmp/test.sh && \
docker build --pull . -f php71/Dockerfile -t akoehnlein/surf:php71 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/surf:php71 /tmp/test.sh && \
docker build --pull . -f php72/Dockerfile -t akoehnlein/surf:php72 && docker run -it -v `pwd`/tests.sh:/tmp/test.sh akoehnlein/surf:php72 /tmp/test.sh
