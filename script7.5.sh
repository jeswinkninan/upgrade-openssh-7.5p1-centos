#/bin/bash
baktime=$(date +%s)
cp /etc/pam.d/sshd pam-ssh-conf-$baktime
wget http://ftp.spline.de/pub/OpenBSD/OpenSSH/portable/openssh-7.5p1.tar.gz
tar -xvf openssh-7.5p1.tar.gz && cd openssh-7.5p1
./configure && make && make install
echo "New version upgrades as to lastest:" && $(ssh -V) 
