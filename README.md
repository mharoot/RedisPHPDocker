# Docker with PHP and Redis example

LAMP Stack with Redis using Docker.
- PHP 7.1 or 7.0
- Redis 3.2.11
- Docker 1.35
- docker-compose version 1.19.0, build 9e633ef

# Run docker-compose.yml
- be sure your in the directory with the docker-compose.yml file
- type the following command: `docker-compose up`
- OR run ./compose.sh

## Clear All Docker Containers (LINUX and WINDOWS git bash)
docker stop $(docker ps -a -q) # stop all docker containers
docker rm -f $(docker ps -a -q) # remove all docker containers

## Clear All Docker Images (LINUX Only)
docker images -q | xargs docker rmi -f # remove all docker images

### Clear All Docker Containers & Images (Linux)
- Be sure to enable permission to execute:
  - `chmod +x clear-docker.sh`
- `./clear-docker.sh`

## Clear All Docker Images (WINDOWS Only)
@echo off
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker rm %%i
FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i

### MISCELLANEOUS BUGS WITH DOCKER-COMPOSE 
- DO NOT RUN `docker-compose up` In Visual Studio Code (Windows Only)