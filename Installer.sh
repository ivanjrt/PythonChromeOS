#!/bin/bash
#some of this was compiled from source: https://linuxize.com/post/how-to-install-python-3-8-on-debian-10/ and others

sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y
curl -O https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz
tar -xf Python-3.9.0.tar.xz
cd Python-3.9.0
./configure --enable-optimizations
make -j 4
sudo make altinstall

#To check for Python Installed Correctly
#python3.9 --version

#To upgrade PIP
cd /usr/local/bin
python3.9 -m pip install --upgrade pip

#To check for Version
#pip3 --version
