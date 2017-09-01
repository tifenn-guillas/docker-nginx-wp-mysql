#!/bin/bash
set -e

exec docker-entrypoint.sh mysqld --user=mysql --console