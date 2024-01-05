FROM node:alpine
WORKDIR /home
COPY . .
RUN npm i
EXPOSE 9995
CMD ["node", "--watch", "app.js"]