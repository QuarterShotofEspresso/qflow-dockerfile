# Author: Ratnodeep Bandyopadhyay
# All rights reserved 2023.

# Dockerfile for Qflow Digital Synthesis Design Suite

# FROM --platform=linux/arm64 ubuntu:18.04
FROM ubuntu:18.04

WORKDIR /home

ENV DEBIAN_FRONTEND=noninteractive

# Install general tools
RUN apt-get update && apt-get install -y \
    wget \
    git \
    make \
    vim \
    fish


# Set fish as default shell
RUN chsh -s /usr/bin/fish
# Set environment variable for shell?
ENV SHELL /usr/bin/fish
    
# Common dependencies
RUN apt-get install -y \
    python3 \
    tcl \
    tk \
    tcsh \
    build-essential \
    cmake

# Install Yosys from source
# Yosys dependencies for building from source
RUN apt-get install -y clang bison flex \
	libreadline-dev gawk tcl-dev libffi-dev git \
	graphviz xdot pkg-config libboost-system-dev \
	libboost-python-dev libboost-filesystem-dev zlib1g-dev

# Install Yosys from binary
# NOTE: This link needs to be adjusted to your dockerfile's architecture
# RUN wget https://github.com/YosysHQ/oss-cad-suite-build/releases/download/2023-12-19/oss-cad-suite-linux-arm64-20231219.tgz
# RUN tar -xzvf oss-cad-suite-linux-arm64-20231219.tgz
RUN apt-get install -y yosys

# Install Yosys from source 
RUN apt-get install -y \
    libgsl-dev \
    libx11-dev

