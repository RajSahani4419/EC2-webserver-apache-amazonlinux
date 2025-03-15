#!/bin/bash

# Update system packages
sudo yum update -y

# Install Apache Web Server
sudo yum install httpd -y

# Start and enable Apache service
sudo systemctl start httpd
sudo systemctl enable httpd

# Open HTTP port in firewall (if enabled)
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

# Create a custom HTML page
echo "<h1>Hello Everyone, Just launched this website, using AWS EC2 + Apache!</h1>
<p>This is a custom deployed webpage Deployed by Me, <b>Er Raj Sahani</b>.</p>" | sudo tee /var/www/html/index.html

# Restart Apache to apply changes
sudo systemctl restart httpd

echo "Apache Web Server installation completed successfully!"

