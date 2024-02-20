FROM node:18-alpine 
WORKDIR /app
#ENV NODE_ENV production
COPY ./package.json ./
RUN npm i --production
COPY . .
CMD [ "node", "src/index" ]
