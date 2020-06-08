source environment-setup.cfg

docker kill $(docker ps -q)
docker rm $(docker ps -a -q)

rm /Users/vanilla/Documents/code/kafka-dev/connect-config/classes/*
rm /Users/vanilla/Documents/code/kafka-dev/connect-config/props/*
cp /Users/vanilla/eclipse-workspace/emp-custom-smt/kafka-connect-custom-InputMessageValidator/target/MsgValidator-0.0.1-SNAPSHOT-jar-with-dependencies-and-exclude-classes.jar  /Users/vanilla/Documents/code/kafka-dev/connect-config/classes/ibm-smt-dependency.jar
cp /Users/vanilla/eclipse-workspace/emp-custom-smt/kafka-connect-custom-InputMessageValidator/target/MsgValidator-0.0.1-SNAPSHOT.jar  /Users/vanilla/Documents/code/kafka-dev/connect-config/classes/ibm-smt.jar
cp /Users/vanilla/.m2/repository/com/ibm/mq/com.ibm.mq.allclient/9.1.3.0/com.ibm.mq.allclient-9.1.3.0-sources.jar /Users/vanilla/Documents/code/kafka-dev/connect-config/classpath/com.ibm.mq.allclient-9.1.3.0-sources.jar
cp /Users/vanilla/eclipse-workspace/emp-custom-smt/kafka-connect-custom-InputMessageValidator/src/main/resources/config/myapp/config.properties /Users/vanilla/Documents/code/kafka-dev/connect-config/props/config.properties
rm ${CODE_PREFIX}/connectors/salesforce/lib/salesforce-0.0.1-SNAPSHOT.jar
cp ${SALESFORCE_CUSTOM_JAR} ${CODE_PREFIX}/connectors/salesforce/lib/salesforce-0.0.1-SNAPSHOT.jar

docker-compose up -d
