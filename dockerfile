# Use the official lightweight Node.js image from the Docker Hub
FROM node:14-alpine

# Create and set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
