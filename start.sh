
file="/etc/nginx/saveconf"
if [ ! -f "$file" ]
then
sed "s/<DOMAIN>/$DOMAIN/" ./nginx.conf > /tmp/nginx.conf
sed "s/<PORTSSL>/$PORTSSL/" /tmp/nginx.conf > /tmp/nginx.conf_1
sed "s/<PORT>/$PORT/" /tmp/nginx.conf_1 > /etc/nginx/nginx.conf
touch $file
fi
nginx -g "daemon off; error_log /dev/stderr notice;"
