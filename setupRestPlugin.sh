source environment-setup.cfg

rm  $REST_CONNECTOR/*
cp  $REST_PLUGIN_JARS $REST_CONNECTOR/kafka-connect-rest-plugin-shaded.jar
cp  $ADD_HEADERS_JARS $REST_CONNECTOR/kafka-connect-rest-header-shaded.jar
cp  $VELOCITY_JARS $REST_CONNECTOR/kafka-connect-rest-velocity-shaded.jar
cp  $TRANSFORM_JARS $REST_CONNECTOR/kafka-connect-rest-transform-shaded.jar
ls -lart $REST_CONNECTOR
