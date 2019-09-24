FROM node:10.16.3-alpine AS builder

WORKDIR /usr/src/front/app

COPY package.json /usr/src/front/app/package.json

RUN npm install
#&& npm install -g @angular/cli@8.2.2

COPY . /usr/src/front/app

#ENTRYPOINT ["ng s", "--", "aot"]

RUN ng s --aot