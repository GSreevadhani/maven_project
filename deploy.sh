#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# 1. Clean and build the Maven project
echo "Cleaning previous builds..."
mvn clean

echo "Building project..."
mvn package -DskipTests

# 2. Build Docker image
echo "Building Docker image..."
docker build -t myapp:latest .

# 3. Run Docker container
echo "Running Docker container..."
docker run -d -p 8070:8080 myapp:latest

echo "Deployment successful! Your app is running on port 8070."
