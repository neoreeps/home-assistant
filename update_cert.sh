#!/bin/bash

echo -e '\nBe sure to update the router config to point here. [ENTER] to continue ...'
read _

# this will update an existing script
sudo certbot renew --no-self-upgrade --standalone --preferred-challenges http-01

# copy the required certs to ssl folder
sudo cp /etc/letsencrypt/live/home.reeps.io/cert.pem ssl/ssl.crt
sudo cp /etc/letsencrypt/live/home.reeps.io/privkey.pem ssl/ssl.key
#sudo cp /etc/letsencrypt/live/home.reeps.io/chain.pem ssl/ssl.pem
