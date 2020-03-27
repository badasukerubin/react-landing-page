# baseImage
FROM node:8 as react-build

# working directory
WORKDIR /

# Copy all package.json files
COPY package*.json ./

# Install all node packages and modules
RUN npm install

# Copy everything to docker environment
COPY . .

# Use react's actual port
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]