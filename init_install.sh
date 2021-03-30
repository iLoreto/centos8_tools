
yum -y update 
yum -y upgrade 

yum -y install epel-release
yum -y update
yum -y upgrade

yum -y install wget firewalld htop nano git tmux

systemctl enable firewalld.service
systemctl start firewalld.service

firewall-cmd --set-default-zone=public
firewall-cmd --add-service=ssh --zone=public --permanent
firewall-cmd --reload

yum clean all
exit;