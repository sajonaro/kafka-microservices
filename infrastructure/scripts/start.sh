#!/bin/bash

docker-compose up -d

# printf '\n  setting up schema registry \n '
# ./post_movies_schema.sh

printf  ' \n configuring debezium \n \n'
sleep 20  #magic pause
./submit_debezium_config.sh

sleep 5
printf '\n checking debezium status \n '
./get_dbzm_status.sh