# Use an official lightweight web server (NGINX)
FROM nginx:alpine

# Set working directory to Nginx's default static file location
WORKDIR /usr/share/nginx/html

# Remove default NGINX static files
RUN rm -rf /usr/share/nginx/html/*

# Copy ALL website files (HTML, CSS, JS, images)
COPY . .

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
