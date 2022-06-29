#!/bin/bash

# Replace $TARGET env variable.
cat nginx.conf.tmpl | envsubst '${TARGET}' > /etc/nginx/conf.d/default.conf

echo "Running with the following config:"
cat /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'

