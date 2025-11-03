FROM ubuntu:latest

FROM maven:3.8.5-openjdk-17 AS BUILD
WORKDIR /app
COPY New_admin-backend/travelo-admin /app
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
WORKDIR /app
COPY --from=BUILD /app/target//target/tr-admin-1.war tr-admin-1.war
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "tr-admin-1.war"]
