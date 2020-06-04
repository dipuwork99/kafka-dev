#curl -X DELETE http://localhost:8083/connectors/mq-avro-source
#curl -X POST -H "Content-Type: application/json" --data '@connector-configs/IbmSourceConnector.json' http://localhost:8083/connectors | jq
# Or, to use a file containing the JSON-formatted configuration
curl -X DELETE http://localhost:8083/connectors/SFDCConnectiveTask
curl -X POST -H "Content-Type: application/json" --data '@connector-configs/salesforcesinkcon.json' http://localhost:8083/connectors | jq
# curl -X DELETE http://localhost:8083/connectors/SalesforceSourcePush
# curl -X POST -H "Content-Type: application/json" --data '@connector-configs/salesforcepushtopic.json' http://localhost:8083/connectors | jq
curl -X DELETE http://localhost:8083/connectors/RestSinkConnector
curl -X POST -H "Content-Type: application/json" --data '@connector-configs/restsinkconnector.json' http://localhost:8083/connectors | jq
