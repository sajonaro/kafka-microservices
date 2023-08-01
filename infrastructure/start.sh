#!/bin/bash

source .env

docker-compose up -d

# printf '\n  setting up schema registry \n '
# script/post_movies_schema.sh

printf  '\n configuring debezium \n\n'
sleep 20  #magic pause
scripts/submit_debezium_config.sh

sleep 5
printf '\n\n checking debezium status \n\n'
scripts/get_dbzm_status.sh