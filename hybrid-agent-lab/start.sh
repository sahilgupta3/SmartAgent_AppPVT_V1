#!/bin/bash

./stop.sh

# Make sure the logs directory exists
mkdir -p ./logs

# Start each instance of the Java application with its own configuration file and log output
nohup java -DconfigFile=./config/tier1.json -jar ./java-services.jar > ./logs/tier1.out.log 2>&1 &
nohup java -DconfigFile=./config/tier1b.json -jar ./java-services.jar > ./logs/tier1b.out.log 2>&1 &
nohup java -DconfigFile=./config/tier1c.json -jar ./java-services.jar > ./logs/tier1c.out.log 2>&1 &
nohup java -DconfigFile=./config/tier2.json -jar ./java-services.jar > ./logs/tier2.out.log 2>&1 &
nohup java -DconfigFile=./config/tier3.json -jar ./java-services.jar > ./logs/tier3.out.log 2>&1 &
nohup java -DconfigFile=./config/tier4.json -jar ./java-services.jar > ./logs/tier4.out.log 2>&1 &
nohup java -DconfigFile=./config/tier5.json -jar ./java-services.jar > ./logs/tier5.out.log 2>&1 &

# An example of tailing the first log file
# tail -f ./logs/tier1.out.log
