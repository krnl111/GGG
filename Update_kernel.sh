#!/bin/bash

# Step 1: Install software-properties-common
echo "Installing software-properties-common..."
sudo apt install software-properties-common -y

# Step 2: Add the PPA for Mainline
echo "Adding the PPA for Mainline..."
sudo add-apt-repository ppa:cappelikan/ppa -y

# Step 3: Update the package list
echo "Updating the package list..."
sudo apt update

# Step 4: Install Mainline
echo "Installing Mainline..."
sudo apt install mainline -y

# Step 5: Use Mainline to install the latest kernel
echo "Installing the latest kernel using Mainline..."
sudo mainline --install-latest

# Step 6: Update GRUB
echo "Updating GRUB..."
sudo update-grub

# Step 7: Reboot the system after Mainline installation is complete
echo "Rebooting the system..."
sudo reboot
