FROM nginx
MAINTAINER Jonathan Ferretti

RUN apt-get install git
RUN git clone https://github.com/LISTERINE/docker-secure-api.git
RUN mv docker-secure-api/nginx.conf /etc/nginx/sites-enabled/default
RUN chown -R www-data /etc/nginx
EXPOSE 4242
CMD /usr/sbin/nginx
