#!/bin/bash 

#? Load environment variables from .env file
set -o allexport
source .env
set -o allexport

VERSION="1.0.0"

#? Build Auth Service
echo "Building auth service"
cd $ROOT/auth-service 
docker build -t $DOCKER_USERNAME/auth-service:$VERSION .
docker push mayhrem/auth-service:$VERSION

#? Build Task Service
echo "Building task service"
cd $ROOT/task-service
docker build -t $DOCKER_USERNAME/task-service:$VERSION .
docker push mayhrem/task-service:$VERSION

#? Build Notification Service
echo "Building notification service"
cd $ROOT/notification-service
docker build -t $DOCKER_USERNAME/notification-service:$VERSION .
docker push mayhrem/notification-service:$VERSION

#? Build Analytics Service
echo "Building analytics service"
cd $ROOT/analytics-service
docker build -t $DOCKER_USERNAME/analytics-service:$VERSION .
docker push mayhrem/analytics-service:$VERSION

#? Build frontend
echo "Building frontend service"
cd $ROOT/frontend
docker build -t $DOCKER_USERNAME/frontend:$VERSION .
docker push mayhrem/frontend:$VERSION

#? Build API gateway
echo "Building api gateway service"
cd $ROOT/api-gateway-service 
docker build -t $DOCKER_USERNAME/api-gateway-service:$VERSION .
docker push mayhrem/api-gateway-service:$VERSION

echo "All services have been built successfully"