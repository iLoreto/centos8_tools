dnf -y install mariadb mariadb-server
systemctl enable mariadb
systemctl start mariadb
firewall-cmd --add-port=3306/tcp --permanent --zone=public
#Azure Security Groups prevents direct public access
firewall-cmd --reload
#mysql_secure_installation
