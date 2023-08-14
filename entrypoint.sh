#!/bin/sh

set -e

EXECUTABLE=$1
TAG=$2
DOCKERFILE=$3

if [ -z $EXECUTABLE ]; then
  echo 'Path to executable is missing'
  exit 1
fi

if [ -z $TAG ]; then
  echo 'Tag is missing'
  exit 1
fi

if [ -f $DOCKERFILE ] ; then
  echo "Dockerfile found"
else
  echo "No Dockerfile at $DOCKERFILE"
  exit 1
fi

chmod u+x $EXECUTABLE
docker build --build-arg executable=${EXECUTABLE} . -f $DOCKERFILE -t $TAG

echo ::set-output name=image::$TAG
