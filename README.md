# DI
Solution of DI Case


# DI Recruitment Case Solution

This repository contains the files for Recruitment case solution, it deploys
Very simple python flask application as a http endpoint.
This application is containerized using Docker and deployed on a minikube cluster and exposed to Internet.

# Assumptions
- Docker is installed on the machine where this code will be executed.
- Minikube is installed where this code will be executed.

# Prerequisites
- kubectl installed

# Clone the repository
git clone https://github.com/Amitj2203/DI.git

# Execute the script(install.sh)
./install.sh

Above script will perform the below actions
- Create a docker image with base python alpine image and containerized the python flask application.
- Make image available to minikube cluster so that it can be pulled locally.
- Deploy a pod named hello in the minikube cluster.
- Expose the above pod with a service of type NodePort.
- Allow port forwarding to allow incoming traffic.
