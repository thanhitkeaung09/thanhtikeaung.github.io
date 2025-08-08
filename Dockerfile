# Use Ubuntu 22.04 as base image
FROM ubuntu:22.04

# Set environment variables to disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update & install Apache
RUN apt update && apt install -y apache2 tzdata

# Copy your site files to Apache web root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
