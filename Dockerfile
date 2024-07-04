FROM node:14

WORKDIR /usr/src/app

#Install dependencies
COPY package.json ./
RUN npm install

COPY . .

# Expose the port required for our Node.js app
EXPOSE 3000

CMD [ "npm", "start"]