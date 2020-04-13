FROM openjdk:8-alpine
VOLUME /tmp
ADD target/my-app-1.0-SNAPSHOT.jar hello-world.jar
ENTRYPOINT exec java -jar /hello-world.jar
