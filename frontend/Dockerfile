# Use a Debian-based Node.js image
FROM node:18-bullseye-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package files and reinstall dependencies
COPY package*.json ./
RUN rm -rf node_modules package-lock.json && npm install --legacy-peer-deps

# Copy the rest of the application code
COPY . .

# Build the application
RUN npm run build

# Expose the port the app will run on
EXPOSE 5173

# Start the application
CMD ["npm", "run", "dev"]
