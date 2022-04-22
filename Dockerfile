# npm run build
# docker build --platform linux/amd64 -t <NAME OF YOUR IMAGE> .
# docker run --env-file .env -it <NAME OF YOUR IMAGE>

FROM node:14-alpine

WORKDIR /home/app/telegram-bot

COPY build/ ./
COPY package*.json ./

RUN npm install --production

CMD ["node", "index.js"]
