#! /bin/bash

# Start Minikube
minikube start

sleep 60

# To point your shell to minikube's docker-daemon, run:
eval $(minikube -p minikube docker-env)

# Build Docker Image
docker build -t hello-app .

# Run a pod with the http endpoint
kubectl apply -f hello_pod.yaml

# Expose the http endpoint using a loadbalancer service
kubectl apply -f hello_svc_np.yaml

# Port forwarding for allowing incoming traffic
kubectl port-forward --address 0.0.0.0 services/hello 8081:80
