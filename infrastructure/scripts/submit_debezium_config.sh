#!/usr/bin/env bash

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
