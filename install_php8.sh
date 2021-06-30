yum -y install yum-utils epel-release
dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
dnf module reset php -y
dnf module install php:remi-8.0 -y
php -v
