# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory inside the container to where Nginx serves files
WORKDIR /usr/share/nginx/html

# Copy all files from the current directory to the container
COPY . .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
