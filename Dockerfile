FROM node:lts-buster

WORKDIR /app

RUN apt-get update && \
    apt-get install -y ffmpeg imagemagick webp git && \
    rm -rf /var/lib/apt/lists/*

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 9090

CMD ["npm", "start"]
