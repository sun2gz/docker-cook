# Run this command to configure your shell: 
eval "$(docker-machine env default)"

# Delete all STOPPED docker containers
docker rm $(docker ps -aq)
 
# Delete all docker images (won't delete the images associated with running containers)
docker rmi $(docker images)
 
# Start a MySQL docker container
docker run -d -e MYSQL_ROOT_PASSWORD=password1 -e MYSQL_USER=psun -e MYSQL_PASSWORD=password1 -e MYSQL_DATABASE=psun_db --name mysql -p 3306:3306 mysql:latest
 
# Launch an interactive terminal to a running docker container
docker exec -it <container name> bash
 
# Show the container's latest 100 stdout logs 
docker logs <container name> | trail -n 100
# Follow a container's stdout
docker logs -f <container name>
