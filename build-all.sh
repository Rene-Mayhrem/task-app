#!/bin/bash 

#? Load environment variables from .env file
export ${grep -v '^#' .env | xargs}
VERSION="1.0.0"

#? Build Auth Service
cd $ROOT/auth-service 
docker build -t $DOCKER_USERNAME/auth-service:$VERSION .

#? Build Task Service
cd $ROOT/task-service
docker build -t $DOCKER_USERNAME/task-service:$VERSION .

#? Build Notification Service
cd $ROOT/notification-service
docker build -t $DOCKER_USERNAME/notification-service:$VERSION .

#? Build Analytics Service
cd $ROOT/analytics-service
docker build -t $DOCKER_USERNAME/analytics-service:$VERSION .

#? Build frontend
cd $ROOT/frontend
docker build -t $DOCKER_USERNAME/frontend:$VERSION .

#? Build API gateway
cd $ROOT/api-gateway-service 
docker build -t $DOCKER_USERNAME/api-gateway:$VERSION .

echo "All services have been built successfully"