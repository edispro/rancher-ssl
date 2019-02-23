
file="/etc/nginx/saveconf"
if [ ! -f "$file" ]
then
sed "s/<DOMAIN>/$DOMAIN/" ./nginx.conf > ./nginx.conf_1
sed "s/<PORTSSL>/$PORTSSL/" ./nginx.conf_1 > ./nginx.conf_2
sed "s/<PORT>/$PORT/" ./nginx.conf_2 > /etc/nginx/nginx.conf
touch $file
fi
nginx -g "daemon off; error_log /dev/stderr notice;"
