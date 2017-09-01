NAME=wordpress

build:
	docker build --file="docker/images/wordpress/Dockerfile" --tag="$(NAME):latest" docker/images/wordpress/.

debug:
	docker run -it --rm --entrypoint=/bin/bash $(NAME):latest

install:
	chmod -Rf 777 docker || true
	chmod 644 docker/etc/mysql/my.cnf
	rm -rf src
	mkdir src
	docker-compose run wordpress install

run:
	docker-compose up