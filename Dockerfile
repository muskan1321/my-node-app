# Use an official Node runtime as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app will run on
EXPOSE 8080

# Command to run your application
CMD ["node", "index.js"]
