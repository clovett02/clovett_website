#!/bin/bash

#file is intended to be run from Jenkins

ssh -tt root@172.105.135.142 '

echo "Stopping and removing preious container.."
docker container stop clovett_website
docker container rm clovett_website

echo "Pulling git repo..."
cd /root/docker/compose/clovett_website
git pull

echo "building container image.."
docker build -f /root/docker/compose/clovett_website/Dockerfile -t clovett_website /root/docker/compose/clovett_website/
docker-compose -f /root/docker/compose/clovett_website/docker-compose.yml up -d
'