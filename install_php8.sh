yum -y install yum-utils
dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
yum-config-manager -y --enable remi-php80
yum -y update
php -v
