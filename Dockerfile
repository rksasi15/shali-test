# Use the official Apache HTTP server image
FROM httpd:latest

# Copy the index.html file into the container's web root directory
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80 to access the Apache server
EXPOSE 80

