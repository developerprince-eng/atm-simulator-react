# Stage 1: Build the React app
FROM node:20.13.1 As build

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all source files and build the app
COPY . .
RUN npm run build

# Stage 2: Serve the app using NGINX
FROM nginx:stable-alpine

# Remove default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy the React build files to NGINX's web directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
