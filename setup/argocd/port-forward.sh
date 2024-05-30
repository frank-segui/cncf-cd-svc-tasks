#!/bin/bash

echo "user: admin"
echo "password: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo)"

kubectl port-forward -n argocd service/argocd-server 8443:443