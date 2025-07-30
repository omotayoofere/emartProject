FROM openjdk:8 AS base
WORKDIR /usr/src/app 
RUN apt update && apt install maven
COPY javaapi ./javaapi
RUN mvn install -DskipTests

FROM openjdk:8
COPY --from=base /usr/src/app/target/book-work.0.0.1.jar ./book-work.0.0.1.jar 
EXPOSE 9000
ENTRYPOINT [ "java", "-jar", "book-work.0.0.1.jar" ]