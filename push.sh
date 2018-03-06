#. Just for demo, we need to use DockerHubAPI instead
docker logout
cat $1|docker login --username=shaoxt --password-stdin docker.io
#docker tag helloworld shaoxt/helloworld:latest
docker push shaoxt/helloworld:latest
