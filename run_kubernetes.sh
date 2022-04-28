#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=gkbrown156/udacity-docker-project-repo

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-api-pod --image=$dockerpath --port=80 --labels app=udacity-api-pod

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-api-pod 5000:50