#!/bin/bash

curl -i -X POST -H "Content-Type: application/vnd.schemaregistry.v1+json" \
  http://localhost:38081/subjects/movies-value/versions \
  -d @../seed-data/movies-schema.json