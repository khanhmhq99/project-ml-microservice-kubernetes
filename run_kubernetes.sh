
#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="khanhmhq/khanhproject:v1.0.1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run khanhproject --image=khanhmhq/khanhproject:v1.0.1 --port=8080

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward khanhproject 8080:80