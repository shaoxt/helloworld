#. Just for demo, we need to use DockerHubAPI instead
docker logout
docker login --username=shaoxt --password=$1 docker.io
#docker tag helloworld shaoxt/helloworld:latest
docker push shaoxt/helloworld:latest
