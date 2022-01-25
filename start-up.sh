#!/bin/bash
# install docker
./docker-install.sh
# Deploy the docker images
docker-compose up -d --force-recreate -f ./Kafka/docker-compose.yml
docker-compose up -d --force-recreate -f ./OEE-BE/docker-compose.yml
docker-compose up -d --force-recreate -f ./OEE-UI/docker-compose.yml
docker-compose up -d --force-recreate -f ./OPC-Server/docker-compose.yml
