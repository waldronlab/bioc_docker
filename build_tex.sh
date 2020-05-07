#!/bin/bash

version=$1

if [ -z "${version// }" ] || [ $version != "release" -a $version != "devel" ]; then
    echo "Enter either 'devel' or 'release' version"
    exit 1
fi

TEX_IMG=waldronlab/bioc_tex:"$version"

docker image build \
    --build-arg VERSION=${version} \
    -t $TEX_IMG .
