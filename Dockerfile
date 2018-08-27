FROM node:8
MAINTAINER Alin Alexandru <alin.alexandru@innobyte.com>
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN . /etc/os-release \
    export CLOUD_SDK_REPO="cloud-sdk-$VERSION_CODENAME" && \
    echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update -y && apt-get install google-cloud-sdk -y

RUN npm install -g ionic@3.20.0 cordova cordova-icon cordova-splash firebase-tools
