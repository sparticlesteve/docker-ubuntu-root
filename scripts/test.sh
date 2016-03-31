#!/bin/bash

set -e

imageName=sfarrell/ubuntu-root
tag=gcc49-root60412

sudo docker run --rm $imageName:$tag /atlas/test/testROOT.sh
