#!/bin/bash

version=$1

if [ -z "${version// }" ] || [ $version != "release" -a $version != "devel" ]; then
    echo "Enter either 'devel' or 'release' version"
    exit 1
fi

waldronIMG=waldronlab/bioc_docker:"$version"

docker image build \
    --build-arg VERSION=${version} \
    -t $waldronIMG dockerfiles/Dockerfile_Bioc
