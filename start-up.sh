#!/bin/bash
# install docker
./docker-install.sh
# Deploy the docker images
docker-compose -f ./Kafka/docker-compose.yml up -d --force-recreate
docker-compose -f ./Kafka/docker-compose.yml up -d --force-recreate
docker-compose -f ./OEE-BE/docker-compose.yml up -d --force-recreate
docker-compose -f ./OEE-UI/docker-compose.yml up -d --force-recreate
docker-compose -f ./OPC-Server/docker-compose.yml up -d --force-recreate
