FROM node:lts-bookworm

WORKDIR /app

RUN apt-get update && \
    apt-get install -y ffmpeg imagemagick webp && \
    rm -rf /var/lib/apt/lists/*

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 9090

CMD ["npm", "start"]
