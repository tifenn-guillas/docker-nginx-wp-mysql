FROM anthonykgross/docker-fullstack-web:ubuntu-php7.1

LABEL author="Tifenn Guillas" \
      github="https://github.com/tifenn-guillas/docker-nginx-wp-mysql"

WORKDIR /var/www/html

# PHP7 NGINX Wordpress
RUN apt-get update -y && \
    apt-get upgrade -y && \
	apt-get install -y nginx php7.1-fpm php7.1-zip php7.1-mysql php7.1-opcache php7.1-xml wget unzip supervisor
RUN	rm -Rf /etc/nginx/* && \
    mkdir -p /etc/nginx/sites-enabled

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh && \
	echo "user = docker" >> /etc/php/7.1/fpm/pool.d/www.conf

RUN rm -rf /var/lib/apt/lists/* && apt-get autoremove -y --purge

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
