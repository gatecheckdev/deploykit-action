FROM ubuntu:latest as base

RUN apt update && \
    apt install -y git curl

FROM base as deploykit

RUN curl -L https://github.com/gatecheckdev/deploykit/releases/download/v0.2.3/deploykit_0.2.3_linux_amd64.tar.gz | tar xz && \
    mv ./deploykit /usr/local/bin/

FROM base as kustomize

RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv5.4.1/kustomize_v5.4.1_linux_amd64.tar.gz | tar xz && \
    mv ./kustomize /usr/local/bin/

FROM base

COPY --from=deploykit /usr/local/bin/deploykit /usr/local/bin/
COPY --from=kustomize /usr/local/bin/kustomize /usr/local/bin/

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
