FROM node:22.9-alpine3.20

RUN apk add --no-cache python3 g++ make

WORKDIR /opt/TediCross/

COPY . .

RUN npm install --omit=dev

VOLUME /opt/TediCross/data/

CMD ["sh", "-c", "node keepalive.js & node dist/main.js -c data/settings.yaml"]
