#!/usr/bin/env bash

set -e

echo "Populating Cerberus DB. This will take a while..."

sleep 60

mysql -uroot -ppassword -h 192.168.33.150 auth <  /vagrant/vagrant/db-scripts/register.sql