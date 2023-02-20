#!/bin/sh
sudo amazon-linux-extras install java-openjdk11 -y
mkdir -p /home/ec2-user/apps/spring
cd /home/ec2-user/apps/spring
aws s3 cp s3://sinensia-hello-spring-acr/hello-spring-0.0.1-SNAPSHOT.jar .
export JAVA_HOME=/usr/lib/jvm/jre-11-openjdk
java -jar hello-spring-0.0.1-SNAPSHOT.jar

