# Use Node.js as the base image
FROM node:16-alpine

# Set working directory
WORKDIR /botpress

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Expose the Botpress port
EXPOSE 3000

# Command to start Botpress
CMD ["npm", "start"]


