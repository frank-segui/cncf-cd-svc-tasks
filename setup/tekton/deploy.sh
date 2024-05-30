#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml