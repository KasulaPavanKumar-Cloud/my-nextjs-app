# 🚀 WEXA AI – DevOps Internship Assessment

**Name:** Kasula PavanKumar  
**Role:** DevOps Intern – WEXA AI  
**Project Title:** Containerization and Deployment of a Next.js Application using Docker, GitHub Container Registry, and Kubernetes (Minikube) on AWS EC2

---

## 📘 Overview
This project was completed as part of the **WEXA AI DevOps Internship Assessment**.  
The goal was to deploy a production-ready **Next.js application** in a Kubernetes cluster hosted on an **AWS EC2 Ubuntu instance**. The project involved containerization, registry management, orchestration, and service exposure in a controlled cloud environment.

---

## 🧩 Objectives
- Set up a full-fledged DevOps environment on **AWS EC2 (Ubuntu)**  
- Install and configure **Docker**, **Minikube**, and **kubectl**  
- Containerize a Next.js web application using a **multi-stage Dockerfile**  
- Push the built image to **GitHub Container Registry (GHCR)**  
- Deploy and manage the application using **Kubernetes manifests**  
- Validate deployment accessibility via a public or tunneled connection  

---

## ⚙️ Environment Setup

**Cloud Platform:** AWS EC2  
**Operating System:** Ubuntu 22.04 LTS  
**Tools Installed:**
- Docker & Docker Compose  
- Minikube  
- kubectl  
- GitHub CLI  
- Node.js (for testing)  

---

## 🐳 Docker Configuration

**1. Multi-Stage Dockerfile**
```dockerfile in repo

## 2. Build and Tag Docker Image

docker build -t my-nextjs-app:latest .

## 3. Verify Image
docker images | grep my-nextjs-app

## GitHub Container Registry (GHCR) Integration
# Authenticate
echo $GHCR_PAT | docker login ghcr.io -u kasulapavankumar-cloud --password-stdin

## Tag and Push Image
docker tag my-nextjs-app:latest ghcr.io/kasulapavankumar-cloud/my-nextjs-app:latest
docker push ghcr.io/kasulapavankumar-cloud/my-nextjs-app:latest

Image Available at - https://github.com/users/kasulapavankumar-cloud/packages/container/package/my-nextjs-app

## Kubernetes Deployment
Deployment Manifest (deployment.yaml)
Service Manifest (service.yaml)

## Apply Configurations
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl rollout status deployment/my-nextjs-app

## Verify Deployment
kubectl get pods -o wide
kubectl get svc

## Accessing the Application
minikube service my-nextjs-service --url
# Example Output:
# http://ip:port

## SSH Port Forwarding (from local machine)
ssh -i keyname -L 3000:Service_URL ubuntu@<EC2_PUBLIC_IP>

We Access via Local browser:


### Results and Validation

✅ Successful EC2 setup with Docker and Minikube
✅ Docker image built and pushed to GHCR
✅ Kubernetes deployment successfully rolled out
✅ Application running in multiple pods
✅ Verified accessibility through SSH tunnel

### Links

Repository: https://github.com/KasulaPavanKumar-Cloud/my-nextjs-app

Container Image: ghcr.io/kasulapavankumar-cloud/my-nextjs-app:latest

GHCR Packages: [View Packages](https://github.com/KasulaPavanKumar-Cloud?tab=packages)


— Kasula PavanKumar
