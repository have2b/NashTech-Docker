FROM node:20 

WORKDIR /src

COPY package.json /src

RUN npm install 

COPY . /src 

EXPOSE 3001

CMD ["node", "index.js"]
