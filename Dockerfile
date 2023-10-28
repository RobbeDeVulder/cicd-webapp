# Use the official Node.js LTS (18.x.x) image with Alpine Linux as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock /app/

# Install the project dependencies
RUN yarn install --frozen-lockfile

# Copy the application code into the container
COPY . /app

# Expose port 3000 to allow external access
EXPOSE 3000

# Command to start your Node.js application
CMD ["yarn", "start"]
