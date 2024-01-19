# Use a lightweight web server image
FROM nginx:alpine

# Copy HTML, CSS, and JS files to the default Nginx public directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY KhmerOSbattambang.ttf /usr/share/nginx/html/
COPY KhmerOSmuolpali.ttf /usr/share/nginx/html/

# Create the 'images' directory inside the container
RUN mkdir /usr/share/nginx/html/images

# Copy all files under the 'images' directory to the container
COPY images/* /usr/share/nginx/html/images/

# Expose port 80
EXPOSE 80