dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
yum -y install yum-utils
dnf module reset php -y
dnf module install php:remi-8.2 -y
dnf -y install php82-php-opcache
php --version
