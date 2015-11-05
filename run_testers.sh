#!/bin/bash

# Run some testers


# Run java statistics
nohup /opt/statistics-tester-java/java_nonce_create.sh 2 1000 &

# Run scala boom
nohup java -agentlib:TakipiAgent -jar /opt/scala-boom.jar & 

# sleep 5 

# curl -i http://localhost:8080/hod-embedded?err
# curl -i http://localhost:8080/hod-embedded?log
# curl -i http://localhost:8080/hod-embedded?fff

