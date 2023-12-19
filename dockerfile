# Author: Ratnodeep Bandyopadhyay
# All rights reserved 2023.

# Dockerfile for Qflow Digital Synthesis Design Suite

FROM --platform=linux/arm64 ubuntu:18.04


WORKDIR /home

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    wget \
    git \
    make \
    vim \
    python3 \
    tcl \
    tk \
    tcsh \
    build-essential \
    cmake \
    libgsl-dev \

# Install Yosys from source
# These are Yosys dependencies if chosen to build from source
# RUN apt-get install build-essential clang bison flex \
# 	libreadline-dev gawk tcl-dev libffi-dev git \
# 	graphviz xdot pkg-config python3 libboost-system-dev \
# 	libboost-python-dev libboost-filesystem-dev zlib1g-dev

# Install Yosys from binary
# NOTE: This link needs to be adjusted to your dockerfile's architecture
RUN wget https://github.com/YosysHQ/oss-cad-suite-build/releases/download/2023-12-19/oss-cad-suite-linux-arm64-20231219.tgz
RUN tar -xzvf oss-cad-suite-linux-arm64-20231219.tgz

# Download graywolf
