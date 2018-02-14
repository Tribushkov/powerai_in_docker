#!/bin/bash

set -e -x
export POWERAI_REPO=mldl-repo-local_4.0.0_ppc64el.deb

# Fixes wrong symbol link for image nvidia/cuda-ppc64le:8.0-cudnn5-runtime-ubuntu16.04
ln -sf /usr/local/cuda-8.0 /usr/local/cuda

apt-get update && apt-get install -y \
    git \
    wget \
    ssh \
    vim \
    curl && \
    apt-get clean

# import PowerAI repo
cd /tmp && \
    wget https://public.dhe.ibm.com/software/server/POWER/Linux/mldl/ubuntu/${POWERAI_REPO} && \
    dpkg -i ${POWERAI_REPO} && \
    rm ${POWERAI_REPO}

# install PowerAI
apt-get update && \
    apt-get install -y power-mldl && \
apt-get clean
# End of PowerAI installation
