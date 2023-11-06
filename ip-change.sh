#!/bin/bash
sudo rm /etc/machine-id
sudo systemd-machine-id-setup
sudo reboot
