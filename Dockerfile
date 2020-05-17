FROM ubuntu:focal

RUN apt update && \
    apt upgrade -y && \
    apt install -y git python3 python3-pip pandoc make && \
    pip3 install panflute && \
    useradd -mUs /bin/bash user

USER user
WORKDIR /home/user
