echo "ResourceDisk.Format=swap" >> /etc/waagent.conf
echo "ResourceDisk.EnableSwap=y" >> /etc/waagent.conf
echo "ResourceDisk.SwapSizeMB=2048" >> /etc/waagent.conf
service waagent restart
swapon -s
