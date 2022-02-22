#!/bin/bash
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
# Add required dependencies for the jenkins package
sudo amazon-linux-extras install epel -y
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install fontconfig java-11-openjdk -y 
sudo yum install jenkins -y
sudo systemctl start jenkins
