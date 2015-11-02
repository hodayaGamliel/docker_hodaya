#!/bin/bash

# Run some testers


# Run java statistics
nohup ./statistics-tester-java/java_nonce_create.sh 2 1000 &

# Run scala boom
nohup java -agentlib:TakipiAgent -jar scala-boom.jar & 

# Run Tomcat Embedded
export MAVEN_OTS="-agentlib:TakipiAgent"
cd hod-embedded ; mvn compile package
nohup cd hod-embedded ;mvn tomcat7:run &

sleep 5 

curl -i http://localhost:8080/hod-embedded?err
curl -i http://localhost:8080/hod-embedded?log
curl -i http://localhost:8080/hod-embedded?fff

