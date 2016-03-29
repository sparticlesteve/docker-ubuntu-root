FROM sfarrell/ubuntu-dev:latest
MAINTAINER Steve Farrell <Steven.Farrell@cern.ch>

# Basic update and development tools
RUN apt-get update -y && \
    apt-get install -y wget libx11-dev libxpm-dev libxft-dev libxext-dev

# Get ROOT
RUN mkdir -p /atlas && cd /atlas && \
    wget https://root.cern.ch/download/root_v6.04.12.source.tar.gz && \
    tar xzf root_v6.04.12.source.tar.gz && \
    mv root-6.04.12 root-6.04.12-source && \
    mkdir root-6.04.12 && cd root-6.04.12 && \
    cmake ../root-6.04.12-source && \
    make -j4 && \
    rm -rf /atlas/root-6.04.12-source /atlas/root_v6.04.12.source.tar.gz
