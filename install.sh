#!/bin/bash
echo "installing rdp..."
sudo apt -qqy install --no-install-recommends ubuntu-desktop
sudo apt -qqy install xfce4 xfce4-goodies xrdp
echo ""exec startxfce4"" | sudo tee -a /etc/xrdp/xrdp.ini
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
echo xfce4-session | sudo tee /home/$(whoami)/.xsession

