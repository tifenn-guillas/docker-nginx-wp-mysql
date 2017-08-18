FROM anthonykgross/docker-base:latest

MAINTAINER Anthony K GROSS

WORKDIR /var/www/html

# PHP7 NGINX Wordpress
RUN curl https://www.dotdeb.org/dotdeb.gpg | apt-key add - && \
    echo 'deb http://packages.dotdeb.org jessie all' >> /etc/apt/sources.list
RUN apt-get update -y && \
    apt-get upgrade -y && \
	apt-get install -y nginx php7.0-fpm php7.0-zip php7.0-mysql php7.0-opcache php7.0-xml wget unzip supervisor
RUN	rm -Rf /etc/nginx/* && \
    mkdir -p /etc/nginx/sites-enabled

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && \
	echo "user = docker" >> /etc/php/7.0/fpm/pool.d/www.conf

RUN rm -rf /var/lib/apt/lists/* && apt-get autoremove -y --purge

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
