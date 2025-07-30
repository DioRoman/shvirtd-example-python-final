#!/bin/bash
export DB_HOST=$(terraform output -raw mysql_host)
export DB_NAME=$(terraform output -raw mysql_database)
export DB_USER=$(terraform output -raw mysql_user)
export DB_PASSWORD=$(terraform output -raw mysql_password)
git clone https://github.com/DioRoman/shvirtd-example-python.git
mv shvirtd-example-python /opt
docker compose -f /opt/shvirtd-example-python/compose.yaml up -d
