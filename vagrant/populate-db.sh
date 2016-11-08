#!/usr/bin/env bash

set -e

echo "Populating Cerberus DB. This will take a while..."

mysql -uroot -ppassword -h 192.168.33.150 auth <  /vagrant/vagrant/db-scripts/register.sql  &> /dev/null