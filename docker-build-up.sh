#!/bin/bash

clear

docker-compose down -v
docker-compose up --build --remove-orphans
