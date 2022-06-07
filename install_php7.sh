dnf -y install https://rpms.remirepo.net/enterprise/remi-release-8.rpm
yum -y install yum-utils php 
dnf module reset php -y
dnf module install php:remi-7.4 -y
dnf -y install php74-php-opcache php-opcache
php --version
