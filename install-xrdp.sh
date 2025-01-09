#!/bin/bash

# Update package list
sudo apt-get update

# Install a lightweight desktop environment
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y xfce4

# Install xrdp
sudo apt-get install -y xrdp

# Enable xrdp service
sudo systemctl enable xrdp
sudo systemctl start xrdp

# Configure xrdp to use Xfce
echo xfce4-session > ~/.xsession

# Restart xrdp
sudo systemctl restart xrdp
