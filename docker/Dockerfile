FROM golang:latest

RUN apt-get update

RUN apt-get -y --no-install-recommends install \
    unzip \ 
    wget \
    curl \
    azure-cli

ARG TFVER='0.14.10'
RUN echo ${TFVER}

RUN wget -q "https://releases.hashicorp.com/terraform/${TFVER}/terraform_${TFVER}_linux_amd64.zip" && unzip terraform_${TFVER}_linux_amd64.zip terraform && mv terraform bin/terraform

RUN rm -rf terraform_${TFVER}_linux_amd64.zip

