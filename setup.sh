#!/bin/bash

# Update system packages
sudo yum update -y

# Install Apache Web Server
sudo yum install httpd -y

# Start Apache Service
sudo systemctl start httpd
sudo systemctl enable httpd

# Allow HTTP traffic in firewall
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

# Create a test webpage
echo "<h1>Apache Web Server Running on Amazon Linux</h1>" | sudo tee /var/www/html/index.html

# Restart Apache to apply changes
sudo systemctl restart httpd

echo "Apache Web Server installation completed!"
