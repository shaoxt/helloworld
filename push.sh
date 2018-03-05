# Just for demo, we need to use DockerHubAPI instead
docker logout
docker login --username=shaoxt --password-stdin https://index.docker.io/v1/
docker tag helloworld shaoxt/helloworld
docker push shaoxt/helloworld:latest
