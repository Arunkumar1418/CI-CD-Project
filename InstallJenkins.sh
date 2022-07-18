#! /bin/bash

sudo yum -y update

# Install Java
sudo amazon-linux-extras install java-openjdk11

sudo yum update –y

# Installing Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install jenkins -y

# Enable Jenkins with systemctl
sudo systemctl enable jenkins


# Start Jenkins
sudo systemctl start jenkins

# Install Git SCM
yum install git -y

# Make sure Jenkins comes up/on when reboot
chkconfig jenkins on