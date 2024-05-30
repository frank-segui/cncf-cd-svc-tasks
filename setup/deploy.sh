#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl config use kind-test 


# Create namespaces
kubectl create namespace argocd || true
kubectl create namespace external-secrets || true
kubectl create namespace apps || true
kubectl create namespace reloader || true
kubectl create namespace tekton-pipelines || true

# Deploy Argocd
$SCRIPT_DIR/argocd/deploy.sh

# Setup External Secrets
$SCRIPT_DIR/external-secrets/deploy.sh

# Deploy Tekton
$SCRIPT_DIR/tekton/deploy.sh