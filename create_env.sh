#!/bin/bash

touch .env

echo "API_VERSION=1" >> .env
echo "GIN_MODE=production" >> .env
echo "BASE_URL=${INPUT_URL}" >> .env
echo "DB_PORT=5432" >> .env
echo "DB_USER=${INPUT_DBUSER}" >> .env
echo "DB_PASSWORD=${INPUT_DBPASSWORD}" >> .env
echo "DB_NAME=${INPUT_DBUSER}" >> .env
echo "DB_HOST=${INPUT_DBHOST}" >> .env
