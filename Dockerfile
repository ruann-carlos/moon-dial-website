# Use an official Node.js runtime as the base image
FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the project files to the working directory
COPY . .

# Build the React application
RUN npm run build

# Expose a port for the container
EXPOSE 80

# Define the command to start the server
CMD ["npm", "start"]