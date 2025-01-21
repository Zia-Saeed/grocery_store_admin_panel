# light weight web server base image 
From nginx:alpine

# working directory inside the container 
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static assets
RUN rm -rf ./*

# Copy the Flutter web build files to the Nginx working directory
COPY build/web .

# Expose the port Nginx will serve on
EXPOSE 8000

# Start Nginx when the container runs
CMD ["nginx", "-g" "daemon off;"]
