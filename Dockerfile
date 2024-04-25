FROM ubuntu:latest

RUN apt update && \
    apt install git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
