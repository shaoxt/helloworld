# Just for demo, we need to use DockerHubAPI instead
export DOCKER_ID_USER="shaoxt"
docker logout
docker login --username=$DOCKER_ID_USER --password=$1 https://index.docker.io/v1/
docker tag helloworld $DOCKER_ID_USER/helloworld
docker push $DOCKER_ID_USER/helloworld:latest
