# Use lightweight web server
FROM nginx:alpine

# Copy your static files into nginx's default html directory
COPY . /usr/share/nginx/html

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
