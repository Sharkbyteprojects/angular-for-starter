FROM node:8
WORKDIR /usr/src/webs
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "test" ]
