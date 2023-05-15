FROM node:alpine

RUN npm install -g npm@9.6.6

WORKDIR /app

EXPOSE 3306

COPY package.json package-lock.json  ./

RUN npm install

COPY . ./

CMD ["npm","start"]