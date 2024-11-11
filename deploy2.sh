#!/bin/bash

echo "Deploying Docker container to EC2..."

# Stop any existing containers
docker stop react-app || true
docker rm react-app || true

# Run the container with the latest image
docker run -d --name react-app -p 8080:80 your-dockerhub-username/prod:latest

echo "Deployment complete!"

