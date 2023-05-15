FROM node:alpine

WORKDIR /app

EXPOSE 3306

RUN mkdir -p /app/simple-web-application

COPY index.js package.json ./simple-web-application

RUN npm install

CMD ["npm","start"]