FROM node:latest

ENV http_proxy=$http_proxy \
    https_proxy=$https_proxy

RUN npm -g config set proxy $http_proxy && \
    npm -g config set http-proxy $http_proxy && \
    npm -g config set https-proxy $https_proxy && \
    npm -g config set strict-ssl false && \
    npm -g config set registry "http://registry.npmjs.org/" && \
    npm -g install firebase-tools && \
    npm -g install express && \
    npm -g install nodemon

WORKDIR /home/app
USER root
#USER root
ENV PORT 3000
EXPOSE 3000 9099 5001 8080 9000 5000 8085 9005

ENTRYPOINT /bin/bash
