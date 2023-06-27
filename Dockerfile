FROM node:lts

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

COPY . .

ENV CLIENT_URL=https://felickslindgren.github.io/disposable-chats/
ENV PORT=3000
EXPOSE 3000
CMD [ "yarn", "run", "start" ]