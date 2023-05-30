# Start with a base image containing Java runtime
FROM openjdk:11

WORKDIR /app

COPY target/*.jar spring-boot-docker-maven.jar

# Make port 8080 available 
EXPOSE 8080 

# Run the jar file 
ENTRYPOINT ["java","-jar","/app/spring-boot-docker-maven.jar"]
