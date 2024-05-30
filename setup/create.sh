#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

kind create cluster --config $SCRIPT_DIR/kind-cluster.yml

kubectl cluster-info --context kind-test

kubectl config use kind-test 
