# Start from an official OpenJDK runtime image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from your build context (on host) into the container
COPY target/jb-hello-world-maven-0.2.0.jar /app/jb-hello-world-maven-0.2.0.jar

# Expose the port your app runs on (optional)
EXPOSE 8080

# Command to run your JAR
ENTRYPOINT ["java", "-jar", "/app/jb-hello-world-maven-0.2.0.jar"]


