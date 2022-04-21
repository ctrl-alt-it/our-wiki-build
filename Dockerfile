FROM ghcr.io/requarks/wiki:2

USER root
RUN apk update && apk add yq
USER node

RUN yq e -i '.db.sslOptions.auto = false' config.yml
RUN yq e -i '.db.sslOptions.rejectUnauthorized = false' config.yml


WORKDIR /wiki
