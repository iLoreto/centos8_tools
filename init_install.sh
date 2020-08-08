
yum -y update 
yum -y upgrade 

yum -y install wget firewalld

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rpm -ivh epel-release-7-11.noarch.rpm

yum -y install wget firewalld htop nano git tmux

yum -y update 
yum -y upgrade 

systemctl enable firewalld.service
systemctl start firewalld.service

firewall-cmd --set-default-zone=public
firewall-cmd --add-service=ssh --zone=public --permanent
firewall-cmd --reload

rm -f *.rpm







