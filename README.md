# SRE Challenge

## Overview
This project demonstrates an infrastructure setup using Python (Flask), Docker, Terraform, and Kubernetes.

## Setup and Deployment

### 1. Build and Run Docker Image
```bash
cd app/
docker build -t your-dockerhub-username/sre-challenge-app .
docker run -p 5000:5000 your-dockerhub-username/sre-challenge-app
cd terraform/
terraform init
terraform apply

kubectl apply -f kubernetes/


