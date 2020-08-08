yum -y install wget nano bzip2  
yum -y install gcc gcc-c++ m4 make automake libtool gettext openssl-devel libcurl-devel libcurl intltool 
wget http://monkey.org/~provos/libevent-1.4.11-stable.tar.gz
tar zxf libevent-1.4.11-stable.tar.gz
cd libevent-1.4.11-stable
./configure --prefix=/usr/lib/libevent1.4.11/
make
make install
cd ..
wget https://github.com/transmission/transmission-releases/raw/master/transmission-2.03.tar.bz2
tar xjf transmission-2.03.tar.bz2
cd transmission-2.03
./configure --enable-cli --enable-daemon LIBEVENT_CFLAGS="-I/usr/lib/libevent1.4.11/include/" LIBEVENT_LIBS="-L/usr/lib/libevent1.4.11/lib/ -levent"
make 
make install

#sudo firewall-cmd --add-port=7777/tcp --permanent
#sudo firewall-cmd --reload

