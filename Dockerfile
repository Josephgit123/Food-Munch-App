# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy all files from the current directory (including index.html, assets, etc.) to the Nginx web server directory
COPY . /usr/share/nginx/html

# Expose port 80 for the app
EXPOSE 80

# Start Nginx in the background
CMD ["nginx", "-g", "daemon off;"]
