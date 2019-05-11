FROM maven:3-jdk-8-alpine

COPY ./pom.xml /itoken-config/pom.xml
COPY ./src /itoken-config/src

RUN cd /itoken-config \
    && mvn clean package

ENTRYPOINT [ "java", "-jar", "/itoken-config/target/itoken-config-1.0.0-SNAPSHOT.jar" ]

EXPOSE 8888