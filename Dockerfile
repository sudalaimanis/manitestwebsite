FROM nginx:latest

# Update and upgrade the package list
RUN apt update && apt upgrade -y

# Install git
RUN apt install git -y

# Clone the repository directly into the NGINX HTML directory
RUN git clone https://github.com/sudalaimanis/manitestwebsite.git /usr/share/nginx/html

# Clean up unnecessary files (optional)
RUN rm -rf /usr/share/nginx/html/.git

# Expose the default NGINX port
EXPOSE 80

# Start NGINX (optional if you plan to override the CMD)
CMD ["nginx", "-g", "daemon off;"]