#!/bin/bash
sudo rm -rf /etc/motd
sudo tee -a /etc/motd >/dev/null <<EOF
==========================================
Welcome! This Machine is Managed by ansible.
==========================================
$(date) , $(hostname)
==========================================
$(ip address | grep 192)
==========================================
EOF