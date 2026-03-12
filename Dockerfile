FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --ignore-scripts

COPY . .

EXPOSE 8888

CMD ["npx","node-static",".","-p","8888","-a","0.0.0.0"]