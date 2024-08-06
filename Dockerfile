FROM nginx:alpine

# Copy the static HTML file to the Nginx server's directory
COPY helloworld.html /usr/share/nginx/html/index.html

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the custom Nginx port
EXPOSE 8080

# Command to run Nginx
CMD ["nginx", "-g", "daemon off;"]

