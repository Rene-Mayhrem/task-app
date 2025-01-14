#!/bin/bash

# Load environment variables from .env file
set -o allexport
source .env 
set -o allexport

echo "Deploying analytics service"
kubectl apply -f $ROOT/infrastructure/k8s/analytics-service-deployment.yaml

echo "Deploying API gateway service"
kubectl apply -f $ROOT/infrastructure/k8s/api-gateway-service-deployment.yaml

echo "Deploying Authentication service"
kubectl apply -f $ROOT/infrastructure/k8s/frontend-service-deployment.yaml

echo "Deploying Frontend service"
kubectl apply -f $ROOT/infrastructure/k8s/notification-service-deployment.yaml

echo "Deploying Notification service"
kubectl apply -f $ROOT/infrastructure/k8s/auth-service-deployment.yaml

echo "Deploying task service"
kubectl apply -f $ROOT/infrastructure/k8s/task-service-deployment.yaml

echo "Services deployed"