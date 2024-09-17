# Using Node.js version 20
FROM node:20

# Set the working directory
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install dependencies
RUN npm install

# Build app
RUN npm run build

# Expose the port that the server will use
EXPOSE 3000

# Command to start the Express server
CMD ["node", "server.js"]
