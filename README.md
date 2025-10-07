## 📘 Overview
This project was completed as part of the **WEXA AI DevOps Internship Assessment**.  
The goal was to deploy a production-ready **Next.js application** in a Kubernetes cluster hosted on an **AWS EC2 Ubuntu instance**. The project involved containerization, registry management, orchestration, and service exposure in a controlled cloud environment.

---

## 🧩 Objectives
- Set up a DevOps environment on **AWS EC2 (Ubuntu)**  
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
<img width="1296" height="839" alt="image" src="https://github.com/user-attachments/assets/2b7fb974-4821-4013-8b40-c4ff7296b93f" />


## 🐳 Docker Configuration

**1. Multi-Stage Dockerfile**
 - Check repo File
## 2. Build and Tag Docker Image

- docker build -t my-nextjs-app:latest .

<img width="1458" height="663" alt="image" src="https://github.com/user-attachments/assets/821cb5b2-fbd9-4129-9f5e-7eee038a0430" />

## 3. Verify Image
- docker images | grep my-nextjs-app

<img width="1499" height="51" alt="image" src="https://github.com/user-attachments/assets/e401f807-3c47-410c-b33d-01c7365a232c" />

## Kubernetes Deployment
Deployment Manifest (deployment.yaml)
Service Manifest (service.yaml)

## Apply Configurations
- kubectl apply -f deployment.yaml
- kubectl apply -f service.yaml
- kubectl rollout status deployment/my-nextjs-app

## Verify Deployment
- kubectl get pods -o wide
- kubectl get svc

<img width="1388" height="527" alt="image" src="https://github.com/user-attachments/assets/6873b234-e238-4afa-a6bf-9fa2f9f89d7f" />

## GitHub Container Registry (GHCR) Integration
# Authenticate
- echo $GHCR_PAT | docker login ghcr.io -u kasulapavankumar-cloud --password-stdin

## Tag and Push Image
- docker tag my-nextjs-app:latest ghcr.io/kasulapavankumar-cloud/my-nextjs-app:latest
- docker push ghcr.io/kasulapavankumar-cloud/my-nextjs-app:latest

- Image Available at - https://github.com/users/kasulapavankumar-cloud/packages/container/package/my-nextjs-app

<img width="1150" height="40" alt="image" src="https://github.com/user-attachments/assets/26c9be8c-2411-4c28-88f1-fc51365af5a2" />

## Accessing the Application
- minikube service my-nextjs-service --url
# Example Output:
# http://ip:port

## SSH Port Forwarding (from local machine)
- ssh -i keyname -L 3000:Service_URL ubuntu@<EC2_PUBLIC_IP>

-- We Access via Local browser:


### Results and Validation

- ✅ Successful EC2 setup with Docker and Minikube
- ✅ Docker image built and pushed to GHCR
- ✅ Kubernetes deployment successfully rolled out
- ✅ Application running in multiple pods
- ✅ Verified accessibility through SSH tunnel

### Links

- Repository: https://github.com/KasulaPavanKumar-Cloud/my-nextjs-app

- Container Image: ghcr.io/kasulapavankumar-cloud/my-nextjs-app:latest

- GHCR Packages: [View Packages](https://github.com/KasulaPavanKumar-Cloud?tab=packages)

<img width="963" height="598" alt="image" src="https://github.com/user-attachments/assets/3c81e368-bcdb-4621-a222-692d902ffc7b" />

## Kasula PavanKumar
