# 🚀 Kubernetes Practical 7: Complete Hands-on Project

![Kubernetes Logo](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![Minikube](https://img.shields.io/badge/Minikube-1D3F5C?style=for-the-badge&logo=minikube&logoColor=white)
![YAML](https://img.shields.io/badge/YAML-CB171E?style=for-the-badge&logo=yaml&logoColor=white)

## 📋 Table of Contents
- [Introduction](#-introduction)
- [Features](#-features)
- [Quick Start](#-quick-start)
- [Project Structure](#-project-structure)
- [Step-by-Step Guide](#-step-by-step-guide)
- [What I Learned](#-what-i-learned)
- [Troubleshooting](#-troubleshooting)
- [Future Enhancements](#-future-enhancements)
- [About Me](#-about-me)

## 🎯 Introduction
This is my hands-on Kubernetes Practical 7 project where I explored fundamental Kubernetes building blocks. I learned how to deploy Pods, manage Deployments, and use ConfigMaps for configuration management.

**Lab Objectives:**
- ✅ Deploy Pod using YAML manifest
- ✅ Create and manage Deployments
- ✅ Scale applications
- ✅ Use ConfigMaps for configuration
- ✅ Mount ConfigMaps as environment variables
- ✅ Troubleshoot using kubectl

## ✨ Features
| Feature | Description | Status |
|---------|-------------|--------|
| 🐳 **Pod Deployment** | Create standalone Pods with resource limits | ✅ Complete |
| 🔄 **Deployment Scaling** | Scale from 2 to 4 replicas manually and via YAML | ✅ Complete |
| ⚙️ **ConfigMap Management** | Externalize configuration using ConfigMaps | ✅ Complete |
| 🎯 **Environment Variables** | Inject ConfigMap values as env variables | ✅ Complete |
| 🛠️ **kubectl Commands** | Master essential kubectl operations | ✅ Complete |
| 📊 **Verification Scripts** | Automated verification of all components | ✅ Complete |

## 🚀 Quick Start

### Prerequisites:
- Minikube or Kubernetes cluster
- kubectl installed
- Basic terminal knowledge

### One-Command Setup:
```bash
# Clone and run
git clone https://github.com/yourusername/kubernetes-lab7-project.git
cd kubernetes-lab7-project
chmod +x scripts/setup.sh
./scripts/setup.sh

Manual Setup:

# 1. Clone repository
git clone https://github.com/yourusername/kubernetes-lab7-project.git

# 2. Go to project folder
cd kubernetes-lab7-project

# 3. Start Kubernetes cluster
minikube start

# 4. Deploy everything
kubectl apply -f manifests/

# 5. Verify deployment
./scripts/verify.sh

📁 Project Structure

kubernetes-lab7-project/
├── manifests/           # Kubernetes YAML files
├── scripts/            # Automation scripts
├── docs/              # Documentation
├── screenshots/       # Screenshots
└── README.md         # This file

📝 Step-by-Step Guide
Step 1: Start Minikube
minikube start
Step 2: Deploy Simple Pod
bash
kubectl apply -f manifests/01-simple-pod.yaml
kubectl get pods
Step 3: Deploy Nginx Deployment
bash
kubectl apply -f manifests/02-nginx-deployment.yaml
kubectl get deployments
Step 4: Create ConfigMap
bash
kubectl apply -f manifests/03-app-config.yaml
kubectl get configmaps
Step 5: Deploy Pod with ConfigMap
bash
kubectl apply -f manifests/04-pod-with-config.yaml
kubectl logs app-pod
Step 6: Scale Deployment

# Scale to 4 replicas
kubectl scale deployment nginx-deployment --replicas=4

# Verify scaling
kubectl get pods -l app=nginx

🧠 What I Learned
Technical Skills:

YAML Manifest Creation - Learned Kubernetes object definitions
Pod vs Deployment - Understood lifecycle management
ConfigMap Usage - Separated configuration from code
kubectl Commands - Mastered essential operations
Troubleshooting - Debugged common Kubernetes issues

Key Takeaways:
🎯 Pods are ephemeral, Deployments manage them
⚙️ ConfigMaps enable 12-factor app methodology
🔄 Declarative YAML is better than imperative commands
🛡️ Always define resource limits
📊 Monitoring is crucial for scaling decisions

🔧 Troubleshooting
Common Issues & Solutions:

Issue	Solution
❌ Pod stuck in Pending	Check resources: kubectl describe pod <name>
❌ ImagePullBackOff	Verify image name and pull policy
❌ CrashLoopBackOff	Check logs: kubectl logs <pod-name>
❌ ConfigMap not found	Verify ConfigMap exists in same namespace
❌ Deployment not scaling	Check events: kubectl get events

Useful Commands:

# Debugging commands
kubectl describe pod <pod-name>
kubectl logs <pod-name> --follow
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl exec -it <pod-name> -- /bin/sh

Support:
If you find this project helpful:

⭐ Star this repository
🔄 Share with your network
🐛 Report issues
💡 Suggest improvements

