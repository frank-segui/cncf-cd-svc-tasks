FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY app.js app.js

CMD [ "node", "app.js" ]