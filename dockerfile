FROM resin/raspberry-pi-alpine-node

LABEL maintainer="mariusjohans@gmail.com"

RUN apk add --update nodejs  nodejs-npm
# && ln -s /usr/bin/nodejs /usr/bin/node

COPY . /src

WORKDIR /src

RUN npm install

EXPOSE 3000

ENTRYPOINT exec npm start
