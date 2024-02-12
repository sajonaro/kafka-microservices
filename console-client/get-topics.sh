#!/bin/bash

docker run -it --rm  --network infrastructure_kafka-net bitnami/kafka:latest kafka-topics.sh --list  --bootstrap-server kafka1:9092