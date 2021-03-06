#!/usr/bin/env bash

set -e

echo "Downloading Mobysoft artifacts. This will take a while..."

rm -f /vagrant/Notifications/repository/Repository.war &> /dev/null
rm -f /vagrant/Notifications/exchange/Exchange.war &> /dev/null
rm -f /vagrant/Notifications/loader/Loader.war &> /dev/null
rm -f /vagrant/Notifications/surveys/Surveys.war &> /dev/null
rm -f /vagrant/IRR/surveys/IRR.war &> /dev/null
rm -f /vagrant/Legacy/bi/BI.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.notifications:Repository:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/Notifications/repository/Repository.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.notifications:Exchange:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/Notifications/exchange/Exchange.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.notifications:Loader:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/Notifications/loader/Loader.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.notifications:Surveys:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/Notifications/surveys/Surveys.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.mobilelogic:RentAnalysisWorker:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/Legacy/rentsense/RentAnalysisWorker.war

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.internal.irr.web:Console:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/IRR/IRR.war &> /dev/null

mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=com.mobysoft.mobilelogic:BI:LATEST:war -DremoteRepositories=http://nexus.mobyops.uk/nexus/content/groups/public/ -Ddest=/vagrant/Legacy/bi/BI.war &> /dev/null