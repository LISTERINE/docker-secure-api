FROM ubuntu:latest
MAINTAINER Jonathan Ferretti

RUN apt-get update && apt-get install nginx openssl
EXPOSE 4242
CMD /usr/sbin/nginx 
