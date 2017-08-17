#/bin/sh

docker build --file="docker/images/wordpress/Dockerfile" --tag="wordpress:latest" docker/images/wordpress/.
docker build --file="docker/images/mysql/Dockerfile" --tag="mysql:latest" docker/images/mysql/.
