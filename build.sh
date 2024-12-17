#!/bin/bash
cd /home/salin/Namaste
sudo chown salin work
sudo rm -rf work
sudo mkarchiso -v profile
