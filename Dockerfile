FROM ubuntu:latest

RUN apt update && \
    apt install -y git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
