#!/bin/sh

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
apt-get update
apt-get install nginx -y

