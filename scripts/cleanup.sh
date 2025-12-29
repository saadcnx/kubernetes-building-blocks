#!/bin/bash

# ============================================
# Cleanup Script for Kubernetes practical 7
# ============================================

echo "🧹 Cleaning up Kubernetes practical 7 resources..."
echo "=========================================="
echo ""

# Confirmation
read -p "Are you sure you want to delete all lab resources? (y/n): " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Cleanup cancelled."
    exit 0
fi

echo "Starting cleanup..."
echo ""

# Delete Pods
echo "1. Deleting Pods..."
kubectl delete pod nginx-pod --ignore-not-found=true
kubectl delete pod app-pod --ignore-not-found=true

# Delete Deployment
echo "2. Deleting Deployment..."
kubectl delete deployment nginx-deployment --ignore-not-found=true

# Delete ConfigMap
echo "3. Deleting ConfigMap..."
kubectl delete configmap app-config --ignore-not-found=true

# Wait for deletion
echo "4. Waiting for resources to be deleted..."
sleep 5

# Verify cleanup
echo ""
echo "5. Verifying cleanup..."
echo ""

RESOURCES=$(kubectl get pods,deployments,configmaps -o name 2>/dev/null | grep -E "nginx|app" || true)

if [ -z "$RESOURCES" ]; then
    echo "✅ All lab resources have been deleted successfully!"
else
    echo "⚠️  Some resources still exist:"
    echo "$RESOURCES"
    echo ""
    echo "Force deleting remaining resources..."
    kubectl delete $RESOURCES --force --grace-period=0 2>/dev/null || true
fi

# Final check
echo ""
echo "📊 Final status:"
kubectl get pods,deployments,configmaps 2>/dev/null || true

echo ""
echo "🧹 Cleanup complete!"
echo ""
echo "Note: minikube cluster is still running."
echo "To stop minikube: minikube stop"
echo "To delete minikube: minikube delete"
