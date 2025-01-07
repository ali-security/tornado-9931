#!/bin/sh

chsh -s bash vagrant

PACKAGES="
curl
python
python34
py27-pip
py27-virtualenv
"

PIP_PACKAGES="
futures
pycurl
tox
"

ASSUME_ALWAYS_YES=true pkg install $PACKAGES

pip install --index-url 'https://:2023-08-11T15:21:47.976039Z@time-machines-pypi.sealsecurity.io/' $PIP_PACKAGES

/tornado/maint/vm/shared-setup.sh
