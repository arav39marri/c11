# Use an OpenJDK base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the compiled JAR file into the container
# Make sure to replace 'eclipsejava.jar' with your actual JAR file name
COPY target/eclipsejava.jar eclipsejava.jar

# Expose the application port (if needed)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "eclipsejava.jar"]
