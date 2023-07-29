

## to run use

- chmod scripts in /inrastructure/scripts directory

- run infrastructure/scripts/start.sh  script  ( stop.sh to stop)


## prerequisites

Docker, docker compose, jc, curl


## Known issues

- to run docker compose on ubuntu you may want to chown the socket docker uses as 

```
sudo chown $(whoami):$(whoami) /var/run/docker.sock

```
