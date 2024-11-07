# Use an official Node.js image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the app on port 80
EXPOSE 80

# Run the app
CMD ["node", "server.js"]
