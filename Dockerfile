FROM node:latest

ENV http_proxy=$http_proxy \
    https_proxy=$https_proxy

RUN apt-get update && apt-get install -y \
    emacs git && \
    rm -rf /var/lib/apt/lists/*

RUN npm -g config set proxy $http_proxy && \
    npm -g config set http-proxy $http_proxy && \
    npm -g config set https-proxy $https_proxy && \
    npm -g config set strict-ssl false && \
    npm -g config set registry "http://registry.npmjs.org/"

WORKDIR /home/app
USER root
#USER root
ENV PORT 3000

EXPOSE 3000

ENTRYPOINT /bin/bash