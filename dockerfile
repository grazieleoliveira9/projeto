FROM node:alpine
WORKDIR /usr/app
COPY . .
RUN npm init -y
RUN npm install cowsay
RUN npx cowsay Hello Docker
RUN cat package.json
ENTRYPOINT npm start
EXPOSE 3000
