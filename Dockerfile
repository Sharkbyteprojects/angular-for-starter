FROM node:8
WORKDIR /usr/src/count
COPY package*.json ./
RUN cd ./docs
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
