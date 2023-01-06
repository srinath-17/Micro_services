FROM node:17.9.0-slim
LABEL maintainer="SrinathUppu"
RUN useradd userui
WORKDIR /app
COPY . .
RUN npm install 
EXPOSE 3000
USER userui
CMD ["npm","start"]
