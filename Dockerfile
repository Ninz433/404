# Use lightweight web server
FROM nginx:alpine

# Copy your static files into nginx's default html directory
COPY . /usr/share/nginx/html

# Replace the default nginx.conf to use port 8080
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Run nginx
CMD ["nginx", "-g", "daemon off;"]
