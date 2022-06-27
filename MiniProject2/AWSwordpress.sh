#!/bin/bash

echo "-----------------------------------------------------------------"
echo "---------------Hailey in team 6----------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------Install wordpress 6.0 and php 7.4---------"
echo "-----------------------------------------------------------------"
echo "-----------------on AWS instance---------------------------------"
echo "-----------------------------------------------------------------"

sed -i 's/^SELINUX=enforcing$/SELINUX=disabled/' /etc/selinux/config

setenforce 0 

sudo amazon-linux-extras enable php7.4

sudo yum clean metadata

sudo yum install -y php-cli php-pdo php-fpm php-json php-mysqlnd

sudo yum install -y unzip wget httpd

sudo systemctl enable --now httpd

cd /var/www/html

sudo wget https://wordpress.org/wordpress-6.0.zip 

sudo unzip wordpress-6.0.zip

sudo mv wordpress/* .

sudo chown -R apache.apache /var/www/*

sudo systemctl restart httpd
