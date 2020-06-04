source environment-setup.cfg

curl -s -X GET http://$CONNECT_HOST_SOURCE:$CONNECT_HOST_PORT/connector-plugins|jq '.[].class'
