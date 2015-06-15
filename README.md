# docker-secure-api
A container for proxying connections to a docker API over ssl with cert based auth


Add:

`DOCKER_OPTS=" -H tcp://172.17.42.1:4243 -H unix:///var/run/docker.sock"`

to your /etc/default/docker file

To run:
Mount the directory containing the key and crt you want to use with nginx

`docker run -d -p 4242:4242 -v ./docker_daemon_ssl:/etc/nginx/ssl --name daemon_proxy listerine/docker-secure-api:latest`
