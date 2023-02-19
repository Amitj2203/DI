#! /bin/bash

# Start Minikube
minikube start

sleep 60

docker build -t hello-app .

# To point your shell to minikube's docker-daemon, run:
eval $(minikube -p minikube docker-env)

# Run a pod with the http endpoint
kubectl apply -f hello_pod.yaml

# Expose the http endpoint using a loadbalancer service
kubectl apply -f hello_svc_lb.yaml

# Port forwarding for allowing incoming traffic
kubectl port-forward --address 0.0.0.0 services/hello 8081:80


