#!/usr/bin/env bash

mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS world;
    GRANT ALL PRIVILEGES ON \`world%\`.* TO '$MYSQL_USER'@'%';
EOSQL
