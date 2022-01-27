FROM node:12.4.0-alpine as debug

WORKDIR /work/

COPY ./rahul-nodejs/package.json /work/package.json
RUN npm install
RUN npm install -g nodemon

COPY ./rahul-nodejs/ /work/src/

ENTRYPOINT [ "nodemon","--inspect=0.0.0.0","./src/server.js" ]