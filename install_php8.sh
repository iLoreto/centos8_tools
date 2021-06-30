yum -y install yum-utils
yum-config-manager -y --enable remi-php80
yum -y update
php -v
