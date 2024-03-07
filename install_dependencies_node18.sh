#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root or using sudo."
  exit 1
fi

# Update package lists
apt-get update

# Install Python
apt-get install -y python

# Install pip
apt-get install -y python-pip

# Install Node.js 18.19 and npm
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y npm

# Install Java 17 (headless)
apt-get install -y openjdk-17-jre-headless

# Install tabula-py using pip
pip install tabula-py

echo "Installation completed successfully."