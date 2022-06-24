sudo yum install -y yum-utils

sudo yum install -y unzip wget httpd

sudo yum-config-manager --disable base (GCP)

sudo yum-config-manager --disable base-openlogic (Azure)


sudo yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm

sudo yum-config-manager --enable remi-php74

sudo yum install php php-cli php-pdo php-fpm php-json php-mysqlnd

sudo yum --enablerepo=remi-php74 install php 

sudo yum-config-manager --enable base(GCP)
sudo yum-config-manager --enable base-openlogic (Azure)


sudo yum-config-manager --disable remi-php74

cd /var/www/html

sudo wget https://wordpress.org/wordpress-6.0.zip 

sudo unzip wordpress-6.0.zip

sudo mv wordpress/* .

sudo chown -R apache.apache /var/www/*

sudo systemctl enable --now httpd