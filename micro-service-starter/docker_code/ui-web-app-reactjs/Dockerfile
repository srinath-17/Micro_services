FROM node:8.7-alpine
LABEL maintainer="srinath@gamail.com"
RUN adduser -m uiapp 
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 8080
USER uiapp
CMD ["npm","start"]
