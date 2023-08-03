

## How to use 

### to start/stop all involved services via docker-compose:
- chmod all scripts in /inrastructure/scripts directory
- use  infrastructure/scripts/start.sh to start script, and sudo stop.sh  - to stop and clean up data volume left after mysql container

### Note (no need to reconfigure):
- .env contains ports used by services to communicate with each other
- seed-data/etc/config-file.cnf file contains essential mysql server side properties to enable kafka connect (based on debezium) 

### check kafka cluster
- localhost:9021

### check database via Adminer tool
- localhost:8080

### post test messages (events) to kafka
- cd instrastrcture/console-client/pub-topic-message.sh [topicname]  [key:value]

### quickly check available topics via consol
- cd instrastrcture/console-client/get-topics.sh 


## Prerequisites
 (need to install via snap or apt)

- Docker
- docker compose
- jc
- curl
- bash
- ubuntu (or any debian linux)


## Known issues

- to run docker compose on ubuntu you may want to chown the socket docker uses as 

```
sudo chown $(whoami):$(whoami) /var/run/docker.sock

```


- debezium configuration process  takes time, so it may take running ./start.sh 2 times in a row to set up debezium connector  