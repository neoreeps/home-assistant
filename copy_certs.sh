#!/opt/bin/bash

if [ ! -e /bin/bash ]; then ln -s /opt/bin/bash /bin/bash; fi
if [ ! -e /bin/openssl ]; then ln -s /usr/builtin/bin/openssl /bin/openssl; fi

# copy the required certs to ssl folder
cp ssl/ssl.crt /usr/builtin/etc/certificate/ssl.crt
cp ssl/ssl.key /usr/builtin/etc/certificate/ssl.key

# yes, same file as pem
cp ssl/ssl.crt /usr/builtin/etc/certificate/ssl.pem

# check the expiry time on the certificate
/volume1/ksfs/k8s_data/certbot/ssl-cert-check -b -c /volume0/usr/builtin/etc/certificate/ssl.crt |awk '{print $NF}'
