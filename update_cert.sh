#!/bin/bash

echo -e '\nBe sure to update the router config to point here. [ENTER] to continue ...'
read _

# this will update an existing script
sudo certbot renew --no-self-upgrade --standalone --preferred-challenges http-01
