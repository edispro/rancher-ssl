
file="/etc/nginx/saveconf"
if [ ! -f "$file" ]
then
sed "s/<DOMAIN>/$DOMAIN/" ./nginx.conf > /etc/nginx/nginx.conf
fi
nginx -g "daemon off; error_log /dev/stderr notice;"
