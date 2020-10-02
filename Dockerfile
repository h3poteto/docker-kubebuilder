FROM ghcr.io/h3poteto/golang:1.15.2

ENV KUBEBUILDER_VERSION 2.3.0

USER root

RUN set -ex && \
    curl -L https://go.kubebuilder.io/dl/${KUBEBUILDER_VERSION}/linux/amd64 | tar -xz -C /tmp/ && \
    mv /tmp/kubebuilder_${KUBEBUILDER_VERSION}_linux_amd64 /usr/local/kubebuilder

USER go

ENV PATH ${PATH}:/usr/local/kubebuilder/bin

