# Dockerfile
FROM node

WORKDIR /app

COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock
RUN yarn install --production

COPY index.js /app/index.js

CMD ["node", "index.js"]
