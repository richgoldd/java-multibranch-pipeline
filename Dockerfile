# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

COPY target/*.jar /app/

# Make port 8080 available 
EXPOSE 8080 

# Run the jar file 
ENTRYPOINT ["java","-jar","/app/spring-boot-docker-maven.jar"]
