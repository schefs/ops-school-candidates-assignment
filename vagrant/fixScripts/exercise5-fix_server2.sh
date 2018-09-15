#!/bin/bash
#add fix to exercise5-server2 here

cat /vagrant/id_rsa_server1.pub >> .ssh/authorized_keys
rm /vagrant/id_rsa_server1.pub
