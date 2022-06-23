#!/bin/bash

echo "-----------------------------------------------------------------"
echo "---------------Hailey in team 6----------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------Install wordpress 6.0 and php 7.4---------"
echo "-----------------------------------------------------------------"
echo "-----------------on AWS instance---------------------------------"
echo "-----------------------------------------------------------------"

sed -i 's/^SELINUX=enforcing$/SELINUX=disabled/' /etc/selinux/config

sentenforce 0 

sudo amazon-linux-extras enable php7.4

sudo yum install -y unzip wget httpd

sudo systemctl enable --now httpd

sudo yum clean metadata

sudo yum install php-cli php-pdo php-fpm php-json php-mysqlnd

sudo wget https://wordpress.org/wordpress-6.0.zip 

sudo unzip wordpress-6.0.zip

sudo mv ~/wordpress/* /var/www/html/

sudo mv wordpress/* /var/www/html/

sudo chown -R apache.apache /var/www/html/

sudo systemctl restart httpd