#!/bin/bash
# install docker
sudo chmod +x docker-install.sh
sudo ./docker-install.sh
# Deploy the docker images
sudo docker-compose -f ./Kafka/docker-compose.yml up -d --force-recreate
sudo docker-compose -f ./Kafka/docker-compose.yml up -d --force-recreate
sudo docker-compose -f ./OEE-UI/docker-compose.yml up -d --force-recreate
sudo docker-compose -f ./OPC-Server/docker-compose.yml up -d --force-recreate
sudo docker-compose -f ./OEE-BE/docker-compose.yml up -d --force-recreate
