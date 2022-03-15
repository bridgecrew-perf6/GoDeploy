#!/bin/bash

touch .env

echo -e "API_VERSION=1" >> .env
echo -e "GIN_MODE=production" >> .env
echo -e "BASE_URL=${INPUT_URL}" >> .env
echo -e "DB_PORT=5432" >> .env
echo -e "DB_USER=${INPUT_DBUSER}" >> .env
echo -e "DB_PASSWORD=${INPUT_DBPASSWORD}" >> .env
echo -e "DB_NAME=${INPUT_DBUSER}" >> .env
echo -e "DB_NAME=${INPUT_DBUSER}" >> .env
