FROM node:8.7-alpine

#Adding useradd by installing passwd package
RUN apt-get update && apt-get install -y passwd

# Create a new user named 'mantainer'
RUN useradd -m uiapp

# Install npm
RUN apt-get update && apt-get install -y npm

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
