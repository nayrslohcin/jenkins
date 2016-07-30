#!/bin/bash

#gpgcheck=0
#vi /etc/yum.repos.d/jenkins.repo
rm /etc/yum.repos.d/CentOS-SCL.repo

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sed -i 's/gpgcheck=1/gpgcheck=0/' /etc/yum.repos.d/jenkins.repo

yum -y --disablerepo="epel" install java
yum -y --disablerepo="epel" install jenkins
service jenkins start
chkconfig jenkins on
