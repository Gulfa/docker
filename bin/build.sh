#!/bin/bash
if [[ "$CI_PWD" == "" ]]; then
    export CI_PWD=$HOME/git/
fi

source $CI_PWD/docker/bin/R_VERSION.sh

docker build --pull --no-cache --tag=raw996/dhadley:$RVERSION --build-arg RVERSION=$RVERSION $CI_PWD/docker/dhadley

