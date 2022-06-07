yum -y install php-mysqli php-pdo php-xml php-gd php-json php-curl php-mbstring php-pecl-uploadprogress

#BEFORE RUNNING FIRST TIME SETUP!

#modify my.cnf
#[mysqld]
#innodb_file_format=barracuda
#innodb_file_per_table=true
##modify drupal settings.php
##restart mariadb

#CREATE THE DATABASE
#CREATE DATABASE databasename DEFAULT COLLATE utf8mb4_general_ci;
#CREATE THE USER

##manually add settings.php:
#$databases['default']['default'] = array(
#  'driver' => 'mysql',
#  'database' => 'databasename',
#  'username' => 'username',
#  'password' => 'password',
#  'host' => 'localhost',
#  'charset' => 'utf8mb4',
# 'collation' => 'utf8mb4_general_ci',
#);

#run the installer at /install.php directly it will go to install profile.

#IF NEEDED CONVERT EXISTING;
#ALTER DATABASE d7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;
#SELECT CONCAT('ALTER TABLE `', TABLE_NAME,'` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;') AS mySQL
#FROM INFORMATION_SCHEMA.TABLES
#WHERE TABLE_SCHEMA= "d7"
#AND TABLE_TYPE="BASE TABLE";
#
#SELinux needs the values for the server to connect to DB and to send emails
#setsebool -P httpd_can_network_connect 1
#setsebool -P httpd_can_network_connect_db 1
#setsebool -P httpd_can_sendmail 1

#for the develoment envorioment; setup vHost or allow httpd.conf this settings
#under the /var/www/html directory section.
#AllowOverride All

#Upgrade from 7.4 to 8.0 PHP Reset theme modules to create new theme configuration files.



