# Use a lightweight base image
FROM node:12.18.1-alpine

# Set the working directory
WORKDIR /

# Copy only the package files first to leverage Docker layer caching
COPY package.json .
COPY package-lock.json .

# Install dependencies without unnecessary cache invalidation
#RUN npm install --quiet --no-progress

# Copy the rest of the application code
COPY . .

# Use a non-root user for better security
USER node

# Specify the default command to run on container start
CMD [ "node", "app.js" ]
