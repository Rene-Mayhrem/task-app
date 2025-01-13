#!bin/bash
kubectl create secret docker-registry task-key \
  --docker-server=https://index.docker.io/v1/ \
  --docker-username=mayhrem \
  --docker-password=Mayhem-1920892 \
  --docker-email=renecruz.0711@gmail.com 