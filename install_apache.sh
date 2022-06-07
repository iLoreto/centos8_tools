dnf -y install httpd
systemctl enable httpd
systemctl start httpd
httpd -v
firewall-cmd --add-service http --permanent --zone=public
firewall-cmd --add-service https --permanent --zone=public
firewall-cmd --reload

