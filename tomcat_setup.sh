#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install java-openjdk11 -y
cd /opt
sudo wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
sudo tar -xvzf apache-tomcat-9.0.58.tar.gz
sudo mv apache-tomcat-9.0.58 tomcat
sudo chmod +x /opt/tomcat/bin/startup.sh 
sudo chmod +x /opt/tomcat/bin/shutdown.sh


find / -name context.xml


 <role rolename="manager-gui"/>
 <role rolename="manager-script"/>
 <role rolename="manager-jmx"/>
 <role rolename="manager-status"/>
 <user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
 <user username="deployer" password="deployer" roles="manager-script"/>
 <user username="tomcat" password="s3cret" roles="manager-gui"/>
