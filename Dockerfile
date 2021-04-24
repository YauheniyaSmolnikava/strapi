FROM node:12-alpine

ENV PORT 80
ENV HOST 0.0.0.0
ENV NODE_ENV production

# create app dir
RUN mkdir -p /user/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app
COPY yarn.lock /usr/src/app
RUN yarn install

COPY . /usr/src/app

RUN yarn build
EXPOSE 80

CMD ["yarn", "start"]
