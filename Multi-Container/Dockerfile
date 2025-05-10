FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]


# docker build -t nodecontainer:latest
# docker run --name mongodb mongo
# docker run -d --rm --name mult-container -p 3000:3000 nodecontainer:latest