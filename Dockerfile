FROM node:8
MAINTAINER Alin Alexandru <alin.alexandru@innobyte.com>
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN npm install -g yarn cordova-icon cordova-splash \
  && yarn global add cordova ionic
