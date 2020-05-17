FROM ubuntu:focal

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-pip pandoc make && \
    pip3 install panflute && \
    ln -svf /usr/bin/python3 /usr/bin/python && \
    useradd -mUs /bin/bash user

USER user
WORKDIR /home/user
