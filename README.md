# docker-nginx-wp-mysql
A Wordpress application with NGINX and all that in Docker

## Requierements
- Docker 1.9
- Docker Compose 1.4

## Directory 
- docker    // Images docker & conf (PHP7, NGINX, Supervisor, MySQL & logs)
- src       // Wordpress source code

## Installation 

Create images for Docker
```console
chmod +x create-images.sh
./create-images.sh
```

Define permissions in folders & conf files
```console
chmod +x install.sh
./install.sh
```

Install application
```console
docker-compose run wordpress install
```

## Launch the application

Run the cluster
```console
docker-compose up
```

Be carefull, at the first run, Wordpress will create all tables that it need to works. To Wordpress can access to the database, you need to fill fields like this:
- Database Name: `wordpress`
- Database Host: `container_mysql`
- Username: `root`
- Password: `root`

## Development 

- Don't miss to add 127.0.0.1 wordpress.local in /etc/hosts (Unix)
- Don't miss to add <VM ip> wordpress.local in /etc/hosts (OSX) or in Windows/System32/drivers/etc/hosts (Win)

## Author

**Tifenn Guillas**
- <http://tifenn-guillas.fr>
- <https://github.com/tifenn-guillas>

## Contributor

**Anthony K GROSS**
- <http://anthonykgross.fr>
- <https://twitter.com/anthonykgross>
- <https://github.com/anthonykgross>
- <http://www.twitch.tv/anthonykgross>


## Technologies
- PHP7
- Wordpress
- MySql
- Docker
