#!/bin/bash

# Bail if error
set -e

# Name of our image to build
imageName=sfarrell/ubuntu-root
# Tag to create
tagName=gcc49-root60412

# Build and tag "latest"
echo "Building $imageName..."
sudo docker build -t $imageName .

# Tag the image
imageID=`sudo docker images -q $imageName:latest`
echo "Tagging $imageID as $tagName..."
sudo docker tag $imageID $imageName:$tagName
