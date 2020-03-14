FROM node:10

WORKDIR /usr/src/app

RUN npm i nodemon babel-cli -g

COPY . .

RUN npm install

EXPOSE 4000

ENTRYPOINT ["nodemon", "-L", "./src/index.js"]

