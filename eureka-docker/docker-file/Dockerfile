FROM openjdk:8-jdk-alpine
ADD springcloud-server-0.0.1-SNAPSHOT.jar /application/cluster-server/
ADD run_app.sh /application/cluster-server/
EXPOSE 8080
ENTRYPOINT sh /application/cluster-server/run_app.sh

