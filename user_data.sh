#!/bin/bash
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "<html><h1>Hello This is Terraform Task 1 by Yasir</h1></html>" | sudo tee /var/www/html/index.html
