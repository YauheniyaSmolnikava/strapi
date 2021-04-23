FROM node:12-alpine

ENV PORT 1337
ENV HOST 0.0.0.0
ENV NODE_ENV production
EXPOSE 1337

# create app dir
RUN mkdir -p /user/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app
COPY yarn.lock /usr/src/app
RUN yarn install

COPY . /usr/src/app

RUN yarn build
EXPOSE 1337

CMD ["yarn", "start"]
