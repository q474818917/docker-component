#!/bin/bash

APP_CONF="/application/cluster-server/application.properties"

echo "##---cluster---##" >>${APP_CONF}

echo "server.port=8080" >>${APP_CONF}
echo "eureka.server.enable-self-preservation=false" >>${APP_CONF}
echo "eureka.server.eviction-interval-timer-in-ms=10000" >>${APP_CONF}
echo "eureka.client.register-with-eureka=false" >>${APP_CONF}
echo "eureka.client.fetch-registry=false" >>${APP_CONF}
echo "eureka.instance.hostname=${HOSTNAME}" >>${APP_CONF}
echo "eureka.client.serviceUrl.defaultZone=${SERVICEURLS}" >>${APP_CONF}

#echo "eureka.instance.hostname=localhost" >>${APP_CONF}
#echo "eureka.client.serviceUrl.defaultZone=http:localhost:8080" >>${APP_CONF}

sleep 300

echo "------------END----------------"

cd /application/cluster-server/
java -jar springcloud-server-0.0.1-SNAPSHOT.jar
