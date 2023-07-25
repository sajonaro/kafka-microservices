#!/bin/bash

docker-compose up -d

sleep 10

# post schema
curl -i -X POST -H "Content-Type: application/vnd.schemaregistry.v1+json" \
  http://localhost:38081/subjects/movies-value/versions \
  -d @./seed-data/movies-schema.json 

# post debezium config (kafka connect)
curl -i -X PUT -H "Content-Type:application/json" \
  http://localhost:8083/connectors/source-debezium/config \
  -d '{
            "connector.class": "io.debezium.connector.mysql.MySqlConnector",
            "tasks.max": "1",
            "database.hostname": "mysql",
            "database.port": "3306",
            "database.user": "debezium",
            "database.password": "dbz",
            "database.server.id": "42",
            "database.server.name": "42",
            "database.include.list": "demo",
            "table.whitelist": "demo.movies",
            "database.history.kafka.bootstrap.servers": "kafka1:9092,kafka2:9092",
            "schema.history.internal.kafka.bootstrap.servers" : "kafka1:9092,kafka2:9092",
            "database.history.kafka.topic": "dbhistory.demo",
            "schema.history.internal.kafka.topic" : "dbhistory.internl.demo",
            "topic.prefix": "debezium-mysql"
    }'

sleep 10
# check debezium status
curl -s "http://localhost:8083/connectors/source-debezium/status"