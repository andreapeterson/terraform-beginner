#!/bin/bash
yum install wget unzip httpd -y #install softwares
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip #Downloads a template
unzip -o 2117_infinite_loop.zip #Unzip the file above
cp -r 2117_infinite_loop/* /var/www/html/ #Copy all the content to /var/www/html
systemctl restart httpd #Restart the service
