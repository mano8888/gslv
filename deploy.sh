#!/bin/bash
##
##
ENVIRONMENT=$1
if [ $ENVIRONMENT = "QA" ];then
	sshpass -p "manoj" scp target/pslv.war dbs@172.17.0.2:/home/manoj/Devops/apache-tomcat-8.5.34/webapps
	sshpass -p "manoj" ssh dbs@172.17.0.2 "JAVA_HOME=/home/manoj/Devops/jdk1.8.0_191" "/home/manoj/Devops/apache-tomcat-8.5.34/bin/startup.sh"

elif  [ $ENVIRONMENT = "SIT" ];then
	sshpass -p "manoj" scp target/pslv.war dbs@172.17.0.3:/home/manoj/Devops/apache-tomcat-8.5.34/webapps
	sshpass -p "manoj" ssh dbs@172.17.0.3 "JAVA_HOME=/home/manoj/Devops/jdk1.8.0_191" "/home/manoj/Devops/apache-tomcat-8.5.34/bin/startup.sh"
fi

