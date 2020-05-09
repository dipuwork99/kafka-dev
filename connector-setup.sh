curl -X POST -H "Content-Type: application/json" --data '@connector-configs/IbmSourceConnector.json' http://localhost:8083/connectors | jq
# Or, to use a file containing the JSON-formatted configuration
