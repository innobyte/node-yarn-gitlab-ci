FROM node:8
MAINTAINER Alin Alexandru <alin.alexandru@innobyte.com>
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-jessie main" | tee /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN sudo apt-get update && sudo apt-get -f install google-cloud-sdk
RUN npm install -g ionic@3.20.0 cordova cordova-icon cordova-splash firebase-tools
