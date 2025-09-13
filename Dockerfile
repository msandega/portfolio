# Dockerfile
FROM nginx:alpine
# Remove default nginx welcome files (optional)
RUN rm -rf /usr/share/nginx/html/*

# Copy static site into nginx's web root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx (default command in base image already does this)
CMD ["nginx", "-g", "daemon off;"]
