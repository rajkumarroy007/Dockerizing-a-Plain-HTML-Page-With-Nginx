# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file into the container
COPY nginx.conf /etc/nginx/conf.d/

# Copy your index.html file into the container at the appropriate location
COPY index.html /usr/share/nginx/html/

# Expose port 80 to the host
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
