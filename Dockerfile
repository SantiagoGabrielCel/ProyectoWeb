FROM nginx:1.25-alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy static site content into Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80