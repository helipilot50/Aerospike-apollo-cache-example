FROM node:10

WORKDIR /usr/src/app

COPY . .

RUN npm i yarn nodemon babel-cli -g

RUN yarn install

EXPOSE 4000

ENTRYPOINT ["nodemon", "-L", "./src/index.js"]

