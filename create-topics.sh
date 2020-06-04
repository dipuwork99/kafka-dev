source environment-setup.cfg
kafka-topics --create  --zookeeper $ZOOKEEPER_HOST:$ZOOKEEPER_PORT --replication-factor 1 --partitions 1 --topic salesforce.lead.topic
kafka-topics --zookeeper $ZOOKEEPER_HOST:$ZOOKEEPER_PORT --list
