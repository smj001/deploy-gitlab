#!/bin/bash

read -p "Please enter your Domain:" DOMAIN_INPUT
read -p "Please enter your E-mail:" EMAIL
read -p "Please enter your Gitlab root password:" PASSWORD
DOMAIN=$(echo $DOMAIN_INPUT | sed 's/^https:\/\///g' | sed 's/^http:\/\///g')
mkdir -p /srv/gitlab/{config/ssl,logs,data}
cp env.example .env
sed -i "s/YOURDOMAIN/$DOMAIN" .env
sed -i "s/SOMEPASSWORD/$PASSWORD" .env
apt-get install certbot -y
certbot certonly --rsa-key-size 2048 --standalone --agree-tos --no-eff-email --email $EMAIL -d $DOMAIN
cp /etc/letsencrypt/live/$DOMAIN/fullchain.pem /srv/gitlab/config/ssl/
cp /etc/letsencrypt/live/$DOMAIN/privkey.pem /srv/gitlab/config/ssl/
openssl dhparam -out /srv/gitlab/config/ssl/dhparams.pem 2048
docker-compose up -d


