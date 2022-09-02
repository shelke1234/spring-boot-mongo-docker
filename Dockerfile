FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/zuul-0.0.1-SNAPSHOT.jar/zuul-SNAPSHOT.jar

WORKDIR $PROJECT_HOME
EXPOSE 9999
CMD ["java" ,"-jar","./zuul-SNAPSHOT.jar"]
