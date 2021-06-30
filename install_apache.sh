dnf -y install httpd
systemctl enable httpd
systemctl start httpd
httpd -v
