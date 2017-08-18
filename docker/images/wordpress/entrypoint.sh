#!/bin/bash
set -e
source ~/.bash_profile

install() {
    gosu docker wget https://wordpress.org/latest.zip
    gosu docker unzip latest.zip
    rm -rf latest.zip index.nginx-debian.html
}

run() {
    supervisord
}

case "$1" in
"install")
    echo "Install"
    install
    ;;
"run")
    echo "Run"
    run
    ;;
*)
    echo "Custom command : $@"
    exec "$@"
    ;;
esac
