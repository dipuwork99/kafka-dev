echo "zookeeper : " ; echo ruok | nc localhost 2181;echo;

echo "Broker status : "
kafkacat -b localhost:9092 -L -J

echo "Plugin status : "
curl curl -s -X GET http://localhost:8083/connector-plugins|jq '.[].class'

echo "schema registry : "

curl -X GET http://localhost:8081/config
