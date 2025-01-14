#!/bin/bash

# Load environment variables from .env file
set -o allexport
source .env 
set -o allexport

NAMESPACE="mayhrem-task-app"

echo "Deleting all services in namespace $NAMESPACE"
kubectl delete services --all 
echo "Deleting all deployments in namespace $NAMESPACE"
kubectl delete deployments --all -n $NAMESPACE
echo "Delete all pods "
kubectl delete pods --all -n $NAMESPACE
echo "Services deployed"