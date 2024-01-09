FROM node:12.18.1
 
WORKDIR /microservicetwo
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
 
CMD [ "nodemon", "app.js" ]