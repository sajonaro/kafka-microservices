#!/bin/bash

echo "$2" > .msg
docker run -i --rm --network  infrastructure_kafka-net bitnami/kafka:latest kafka-console-producer.sh --bootstrap-server kafka1:9092 --topic $1 --property parse.key=true --property key.separator=: < .msg