#!/usr/bin/env bash

set -e

echo "Downloading Mobysoft artifacts. This will take a while..."

rm -f /vagrant/AuthenticationService/AuthenticationService.war &> /dev/null
rm -f /vagrant/AuthenticationService/SecurityAdminService.war &> /dev/null
rm -f /vagrant/AuthenticationService/AccountManagement.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.security:AuthenticationService:1.0-SNAPSHOT:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/AuthenticationService/AuthenticationService.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.security:SecurityAdminService:1.0-SNAPSHOT:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/SecurityAdminService/SecurityAdminService.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.security:AccountManagement:1.0-SNAPSHOT:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/AccountManagement/AccountManagement.war &> /dev/null