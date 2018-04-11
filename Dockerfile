FROM node:9.10-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN yarn install --silent

# Bundle app source
COPY . .

# Build the app
RUN yarn build

# Expose the port the app listens on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
