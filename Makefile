NAME_1=wordpress
NAME_2=app_mysql

build:
	docker build --file="docker/images/wordpress/Dockerfile" --tag="$(NAME_1):latest" docker/images/wordpress/.
	docker build --file="docker/images/mysql/Dockerfile" --tag="$(NAME_2):latest" docker/images/mysql/.

debug:
	docker run -it --rm --entrypoint=/bin/bash $(NAME_1):latest

install:
	chmod -Rf 777 docker/
	chmod 644 docker/etc/mysql/my.cnf
	mkdir src
	docker-compose run wordpress install

run:
	docker-compose up