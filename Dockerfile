FROM amazoncorretto:11-alpine
WORKDIR /app
COPY ./target/hello-spring-0.0.1-SNAPSHOT.jar /app/hello-spring.jar
CMD ["java", "-jar", "hello-spring.jar"]

