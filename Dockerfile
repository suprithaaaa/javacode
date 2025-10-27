# Start from an official OpenJDK runtime image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /var/lib/jenkins/workspace/assignment/target 

# Copy the JAR file from your local machine into the container
COPY target/jb-hello-world-maven-0.2.0.jar
# ^ adjust path if your .jar is in a different directory

# Expose the port your app runs on (optional)
EXPOSE 8080

# Command to run your JAR
ENTRYPOINT ["java", "-jar", "target/jb-hello-world-maven-0.2.0.jar"]

