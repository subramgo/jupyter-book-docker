#!/bin/bash

[ -d keys ] || mkdir keys

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout keys/mykey.key -out keys/mycert.pem -subj "/C=US/ST=F/L=B/O=C/OU=D/CN=F"

cat <<EOF > my.env
HOST_DIR=${PWD}
CERT_DIR=${PWD}/keys
TOKEN="mytoken"
EOF
