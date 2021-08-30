#Docker 


[Beginer guid](https://docker-curriculum.com/)

```bash
docker image        # list images
docker ps           # list containers
docker ps -a        # list all containers

docker rm CONTAINER_ID 	# remove container
docker rmi IMAGE_ID 	# remove image

docker run image_name               # run image
docker run --name mysql user/mysql   # specific name for container
docker run -p 80:80 image_name      # run on specific port 
docker run -d image_name            # run like daemon

docker rmi $(docker images -a -q) # remove all images
docker container prune 	# delete all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker build -t IMAGE_NAME PATH_TO_DOCKERFILE 	# build image
```

## Docker-compose

```bash
docker-compose build
docker-compose up
```
