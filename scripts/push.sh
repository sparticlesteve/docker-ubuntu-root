#!/bin/bash

set -e

# Image to push
imageName=sfarrell/ubuntu-root

# Push the image to docker-hub
echo "Pushing $imageName to docker-hub"
sudo docker push $imageName
