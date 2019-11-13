#!/bin/sh

apt-get update
apt-get install nginx -y
sleep 60
pip3 install virtualenv
mkdir pyexample
cd pyexample
mkdir tmp
cd tmp
git clone https://github.com/Venafi/vcert-python.git
cp vcert-python/examples/get_cert.py ..
cd ..
virtualenv .
source ./bin/activate