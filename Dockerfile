# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container
COPY target/hello-world.jar /app/

# Specify the command to run your Java application
ENTRYPOINT ["java", "-jar", "hello-world.jar"]
