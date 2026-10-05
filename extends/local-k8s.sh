#!/bin/bash
# Use minikube for local development
brew install minikube

# Use helm to manage packages
brew install helm

# Use virtualbox as driver
brew install --cask virtualbox

# Verify installed tools
set -e

# Check if minikube is in brew list
if ! brew list | grep -q "minikube"; then
  echo "Error: minikube is not installed in brew list."
  exit 1
fi

# Check minikube version
if ! minikube version &> /dev/null; then
  echo "Error: minikube command not found."
  exit 1
fi

# Check if minikube is running
if ! minikube status | grep -q "running"; then
  echo "Error: minikube status does not show 'running'."
  exit 1
fi

# Success message
echo "✅ minikube, helm, and virtualbox installed successfully. minikube is running."
