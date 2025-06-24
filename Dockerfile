# dockerfile for building a Docker image for a node.js mineflayer discord bot

FROM node:20

# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install --production
# Copy the rest of the application code
COPY . .
# Expose the port the app runs on
EXPOSE 3000

# expose the port for the discord bot
EXPOSE 8080

# expose the port for the mineflayer bot
EXPOSE 25565

# Start the application
CMD ["node", "index.js"]

# should be run with:
# docker build -t mineflayer-discord-bot .