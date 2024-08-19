# Use a specific version of Alpine as the base image
FROM alpine:3.16.0

# Install OpenJDK 17 from Alpine repositories
RUN apk add --no-cache \
    openjdk17-jdk \
    java-cacerts

# Set environment variables for Java
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk
ENV PATH="$JAVA_HOME/bin:$PATH"

# Create a directory for the application
WORKDIR /app

# Copy the Maven project file (pom.xml) and the source code
COPY pom.xml .
COPY src ./src

# Use Maven to build the application
RUN apk add --no-cache maven && \
    mvn clean package -DskipTests

# Expose the port the Spring Boot application will run on
EXPOSE 8080

# Set the entry point to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/target/rev-connect-api-0.0.1-SNAPSHOT.jar"]
