#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl apply -f $SCRIPT_DIR/gcpsm-secret.yml -n apps
