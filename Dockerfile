FROM node:8
WORKDIR /usr/src/count
RUN cd ./docs
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "test" ]
