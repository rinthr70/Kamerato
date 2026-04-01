FROM node:20-slim

RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json ./

ENV NODE_OPTIONS=--max-old-space-size=512
ENV npm_config_fund=false
ENV npm_config_audit=false

RUN npm install --omit=dev --no-fund --no-audit --prefer-offline || npm install --omit=dev --no-fund --no-audit

COPY . .

CMD ["node", "index.js"]
