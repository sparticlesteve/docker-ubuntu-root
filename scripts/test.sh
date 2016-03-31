#!/bin/bash

set -e

imageName=sfarrell/ubuntu-root
tag=gcc49-root60412

sudo docker run $imageName:$tag \
    . /atlas/root-6.04.12/bin/thisroot.sh && \
    root -b -q && \
    python -c "import ROOT"
