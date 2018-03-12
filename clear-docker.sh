# Clear All Docker Containers
docker stop $(docker ps -a -q) # stop all docker containers
docker rm -f $(docker ps -a -q) # remove all docker containers

# Clear All Docker Images (LINUX)
docker images -q | xargs docker rmi -f # remove all docker images