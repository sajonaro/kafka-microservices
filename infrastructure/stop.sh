#!/bin/bash
source .env

docker-compose down -v
rm -r ./seed-data/volume/*