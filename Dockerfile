FROM node:alpine

RUN npm install -g npm@9.6.7

WORKDIR /app

EXPOSE 3006

COPY package.json package-lock.json  ./

RUN npm install

COPY . .

CMD ["npm","start"]
