#!/bin/bash

# Run some testers

# Run java statistics
nohup ./statistics-tester-java/java_nonce_create.sh 2 1000 &

# Run scala boom
nohup java -agentlib:TakipiAgent -jar scala-boom.jar &

# Run Tomcat Embedded
#export MAVEN_OTS="-agentlib:TakipiAgent"
#mvn compile package
#nohup mvn tomcat7:run &
