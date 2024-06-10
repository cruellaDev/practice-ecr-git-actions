FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
CMD [ "node", "app.js" ]
