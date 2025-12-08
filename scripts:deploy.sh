#!/bin/bash

# Install dependencies
sudo apt update && sudo apt install -y nginx certbot python3-certbot-nginx nodejs npm

# Configure NGINX
sudo cp nginx/webhooks.conf /etc/nginx/sites-available/webhooks
sudo ln -s /etc/nginx/sites-available/webhooks /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl restart nginx

# Obtain SSL certificate
sudo certbot --nginx -d webhooks.yourdomain.com --non-interactive --agree-tos -m your.email@example.com

# Start Node.js server
cd nodejs && npm install && node server.js &
