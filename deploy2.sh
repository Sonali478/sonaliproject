#!/bin/bash

echo "Deploying Docker container to EC2..."

# Stop any existing containers
docker stop test3 || true
docker rm test3 || true

# Run the container with the latest image
docker run -d -p 8087:8080 --name testpp test

echo "Deployment complete!"
