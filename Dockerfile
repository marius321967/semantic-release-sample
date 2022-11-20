FROM node:18

WORKDIR /app

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock
RUN yarn install --production

COPY . /app

CMD ["node", "index.js"]
