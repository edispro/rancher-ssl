
sed "s/<DOMAIN>/$DOMAIN/" ./nginx.conf > /etc/nginx/nginx.conf
nginx -g "daemon off; error_log /dev/stderr notice;"
