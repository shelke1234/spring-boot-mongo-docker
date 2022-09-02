
#jdk
FROM openjdk:11.0.10-jre
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
#COPY --from=build /app/target/zuul-0.0.1-SNAPSHOT.jar /app 
COPY target/zuul-0.0.1-SNAPSHOT.jar $PROJECT_HOME/zuul-0.0.1-SNAPSHOT.jar

EXPOSE 9999

CMD ["java", "-jar", "zuul-0.0.1-SNAPSHOT.jar"] 
