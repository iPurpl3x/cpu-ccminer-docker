FROM ubuntu:20.10

LABEL maintainer="rafael.hrovat@icloud.com"
LABEL version="0.1.0"
LABEL description="CPU ccminer ubuntu docker image"

# This variable will be used to pass options to ccminer when the container is started
ENV MINER_OPTIONS=""

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install dependencies
RUN apt install -y git libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential

# Clone the ccminer repo
RUN mkdir /home/crypto
WORKDIR /home/crypto
RUN git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
WORKDIR /home/crypto/ccminer

# Then use the helper ./build.sh in ccminer source folder
RUN ./build.sh

# Add the command that will be executed when the cointainer is started
CMD ./ccminer ${MINER_OPTIONS}