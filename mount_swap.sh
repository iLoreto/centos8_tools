mounting swap
$swapon -s //checks for current swapsapce
$lsblk //gets list of available disks
$file -s <device path>
$mkfs -t ext4 <device path> //if file returns data only
$mkdir <mount_point> /data/swap
$mount <device_name> <mount_point>
//get UUID of swap drive
$file -s <device_name> /dev/xvdb
$cp /etc/fstab /etc/fstab.orig
$nano /etc/fstab
//append 
UUID=<uuid> /data/swap   ext4  defaults,nofail  0 2
$mount -a

