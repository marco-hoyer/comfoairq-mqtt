FROM node:19.3

RUN apt install python3 -y

ADD dist /app
ADD package.json /app

WORKDIR /app
RUN yarn install

CMD ["node", "/app/index.js"]
