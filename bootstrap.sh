#!/usr/bin/env bash

apt-get update
apt-get install -y emacs24

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.6
curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python3.6 && sudo python3.6 -m easy_install pip
sudo pip3 install virtualenv
