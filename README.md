# docker-secure-api
A container for proxying connections to a docker API over ssl with cert based auth


Add:
`DOCKER_OPTS=" -H tcp://172.17.42.1:4243 -H unix:///var/run/docker.sock"`

to your /etc/default/docker file
