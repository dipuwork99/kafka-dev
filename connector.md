https://docs.confluent.io/3.1.2/connect/userguide.html
#https://docs.confluent.io/3.1.2/connect/userguide.html


Specify connector logging[applicable for all components]
#https://docs.confluent.io/3.1.1/cp-docker-images/docs/operations/logging.html

Monitoring connectors
#https://docs.confluent.io/current/connect/managing/monitoring.html#common-rest-examples

Debugging custom connectors
#https://stackoverflow.com/questions/45717658/what-is-a-simple-effective-way-to-debug-custom-kafka-connectors



https://um6.salesforce.com/services/data/v48.0/sobjects/Lead/describe

DEBUG curl -v --compressed -H 'Accept-Encoding: gzip' -H 'Authorization: Bearer 00D4K000000EXny!AQgAQHbe6lpU3humbz0aic9rZNjlgCf0KcA4WdZpH4RKvw3.XYy0Y6SefCDKCnLih86NoCVjSPd5pSv00n5v8fWQ6UZrjTWF' -H 'User-Agent: Google-HTTP-Java-Client/1.32.1 (gzip)' -- 'https://um6.salesforce.com/services/data/v48.0/sobjects/Lead/describe'

2020-05-28 20:04:57,667] INFO Using Salesforce instance from authentication: https://um6.salesforce.com (io.confluent.salesforce.rest.SalesforceRestClientImpl)

[2020-05-28 20:04:57,668] DEBUG Calling GET on https://um6.salesforce.com/services/data/ (io.confluent.salesforce.rest.SalesforceRestClientImpl)

[2020-05-28 20:04:57,668] DEBUG -------------- REQUEST --------------

GET https://um6.salesforce.com/services/data/

Accept-Encoding: gzip

Authorization: Bearer 00D4K000000EXny!AQgAQHbe6lpU3humbz0aic9rZNjlgCf0KcA4WdZpH4RKvw3.XYy0Y6SefCDKCnLih86NoCVjSPd5pSv00n5v8fWQ6UZrjTWF

User-Agent: Google-HTTP-Java-Client/1.32.1 (gzip)

[2020-05-28 20:04:57,668] DEBUG curl -v --compressed -H 'Accept-Encoding: gzip' -H 'Authorization: Bearer 00D4K000000EXny!AQgAQHbe6lpU3humbz0aic9rZNjlgCf0KcA4WdZpH4RKvw3.XYy0Y6SefCDKCnLih86NoCVjSPd5pSv00n5v8fWQ6UZrjTWF' -H 'User-Agent: Google-HTTP-Java-Client/1.32.1 (gzip)' -- 'https://um6.salesforce.com/services/data/' (io.confluent.salesforce.rest.SalesforceRestClientImpl)


{"access_token":"00D4K000000EXny!AQgAQHbe6lpU3humbz0aic9rZNjlgCf0KcA4WdZpH4RKvw3.XYy0Y6SefCDKCnLih86NoCVjSPd5pSv00n5v8fWQ6UZrjTWF","instance_url":"https://um6.salesforce.com","id":"https://login.salesforce.com/id/00D4K000000EXnyUAG/0054K000000lWv9QAE","token_type":"Bearer","issued_at":"1590696297594","signature":"rUvQrbpYB31pqu/ie5oTVftwVyIImBCrQTuf7VxALMk="}
