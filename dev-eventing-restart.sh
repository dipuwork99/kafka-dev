docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
cp /Users/vanilla/eclipse-workspace/emp-custom-smt/kafka-connect-custom-InputMessageValidator/target/MsgValidator-0.0.1-SNAPSHOT-jar-with-dependencies-and-exclude-classes.jar  /Users/vanilla/Documents/examples/kafka/connect-config/classes/ibm-smt.jar
cp /Users/vanilla/eclipse-workspace/emp-custom-smt/kafka-connect-custom-InputMessageValidator/src/main/resources/config/myapp/config.properties /Users/vanilla/Documents/examples/kafka/connect-config/props/config.properties
docker-compose up -d
