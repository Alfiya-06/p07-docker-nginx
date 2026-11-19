#!/bin/bash
echo "Building docker image..."
docker build -t my-nginx-app .

echo "Removing old container if exists..."
docker rm -f my-nginx-container 2>/dev/null

echo "Running docker container on port 54321..."
docker run -d -p 54321:80 --name my-nginx-container my-nginx-app

echo "Container started successfully!"
