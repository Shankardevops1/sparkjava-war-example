#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://jenkins-test-88/java_code4/sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@72.0.0.247:/home/ec2-user/tomcat/apache-tomcat-9.0.64/webapps
ssh ec2-user@72.0.0.247 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.64/bin/
    ./shutdown.sh
    ./startup.sh
HERE
