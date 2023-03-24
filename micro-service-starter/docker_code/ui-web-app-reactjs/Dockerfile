FROM node:8.7-alpine
LABEL maintainer="srinath@gamail.com"
RUN sudo adduser uiapp --gecos "" --disabled-password
RUN echo "uiapp:password" | sudo chpasswd 
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 8080
USER uiapp
CMD ["npm","start"]
