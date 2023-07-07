#!/bin/sh
# echo '192.168.1.55 master' >> /etc/hosts
# echo '192.168.1.56 web01' >> /etc/hosts
# echo '192.168.1.57 web02' >> /etc/hosts

cat <<EOF >> /etc/hosts
192.168.1.55 master
192.168.1.56 web01
192.168.1.57 web02 
EOF