FROM node:latest

RUN apk update && sudo apt-get install apk-tools

#Adding useradd by installing shadow package
RUN apk add --no-cache shadow


# Create a new user named 'mantainer'
RUN useradd -m uiapp

# Add the community repository to the package manager configuration
RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories

# Install npm
RUN  apk add --no-cache nodejs npm && apk update

# Set the working directory to /app
WORKDIR /app

# Set the mantainer label
LABEL mantainer="srinath@gamil.com"

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Set the user to 'mantainer'
USER mantainer

# Expose the port that the application will run on
EXPOSE 8080

# Start the application
CMD [ "npm", "start" ]
