#!/bin/bash
echo "Install Java."
sudo dnf install java-11-openjdk-devel -y

echo "Install wget."
sudo dnf install -y wget

echo "Import Jenkins key."
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

echo "Add Jenkins repo."
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

echo "Install Jenkins."
sudo dnf install -y jenkins

echo "Start Jenkins."
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service