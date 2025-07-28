# Use Java 21 base image
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Make mvnw executable and build the app
RUN chmod +x mvnw && ./mvnw package -DskipTests

# Run the JAR
CMD ["sh", "-c", "java -jar target/*.jar"]
