#!/bin/bash
#add fix to exercise5-server1 here
sudo -u vagrant /bin/sh <<\VAGRANT_BLOCK

yes | ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/id_rsa_server1.pub

VAGRANT_BLOCK

echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config