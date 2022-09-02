
#jdk
FROM openjdk:8-alpine
WORKDIR /app
COPY --from=build /app/target/zuul-0.0.1-SNAPSHOT.jar /app 

EXPOSE 9999

CMD ["java", "-jar", "zuul-0.0.1-SNAPSHOT.jar"] 
