#!/bin/sh

ACME_PATH="/tmp/mnt/storage/entware/home/acme.sh/acme.sh"
DOMAIN=""
EMAIL=""

$ACME_PATH --issue -d $DOMAIN -d *.$DOMAIN --dns dns_namecheap -k ec-256 -m $EMAIL

# Restart the nginx service on the router to apply the renewed certificate

NGINX_PID=$(ps | grep nginx | awk '{print $1}')
if [ -z "$NGINX_PID" ]; then
  echo "No nginx processes found"
else
  echo "Killing nginx processes with PIDs: $NGINX_PID"
  kill $NGINX_PID
  sleep 1
  echo "Starting new nginx process"
  /tmp/mnt/storage/entware/sbin/nginx
fi

#crontab -l | { cat; echo "0 0 1 * * /path/to/script.sh renew_certificate"; } | crontab -
