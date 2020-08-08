cd ~
sudo yum install wget git zsh -y
echo "/usr/bin/zsh" >> /etc/shells
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
sudo chsh -s $(which zsh) $(whoami)
exit 
