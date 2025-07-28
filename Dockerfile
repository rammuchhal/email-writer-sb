# Use Java 21 official image from Eclipse Temurin
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build the Spring Boot app using Maven Wrapper
RUN ./mvnw package -DskipTests

# Run the JAR file (Render sets PORT in env)
CMD ["sh", "-c", "java -jar target/*.jar"]
