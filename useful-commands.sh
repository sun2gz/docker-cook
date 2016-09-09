# Delete all STOPPED docker containers
docker rm $(docker ps -aq)
 
# Delete all docker images (won't delete the images associated with running containers)
docker rmi $(docker images)
 
# Start a MySQL docker container
docker run -d -e MYSQL_ROOT_PASSWORD=password1 -e MYSQL_USER=psun -e MYSQL_PASSWORD=password1 -e MYSQL_DATABASE=psun_db --name mysql -p 3306:3306 mysql:latest
 
# Launch an interactive terminal to a running docker container
docker exec -it <container name> bash
 
# Show a container's stdout
docker logs <container name>
# Follow a container's stdout
docker logs -f <container name>
