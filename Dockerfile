# Use the official Nginx base image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy index.html from current directory (.) to container
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
