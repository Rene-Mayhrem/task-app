#!bin/bash
kubectl create secret docker-registry task-key \
  --docker-server=https://index.docker.io/v1/ \
  --docker-username=mayhrem \
  --docker-password=Mayhem-1920892 \
  --docker-email=cgrfruz01@gmail.com \
  --namespace=mayhrem-task-app

