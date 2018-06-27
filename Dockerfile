FROM java:8-jdk
VOLUME /tmp
ARG JAR_FILE
COPY ${JAR_FILE} gw-eureka-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gw-eureka-0.0.1-SNAPSHOT.jar"]