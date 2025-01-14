#!/bin/bash

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install Azure CLI
echo "Installing Azure CLI..."
brew install azure-cli

# Install Azure Developer CLI (azd)
echo "Installing Azure Developer CLI (azd)..."
brew tap azure/azd
brew install azd

# Install Azure Functions Core Tools
echo "Installing Azure Functions Core Tools..."
brew tap azure/functions
brew install azure-functions-core-tools@4

# Install Node.js (LTS version)
echo "Installing Node.js..."
brew install node

# Install Python (latest version)
echo "Installing Python..."
brew install python

# Install .NET SDK (latest version)
echo "Installing .NET SDK..."
brew install --cask dotnet-sdk

# Install Docker Desktop
echo "Installing Docker Desktop..."
brew install --cask docker

# Verify installations
echo "Verifying installations..."
az version
azd version
func --version
node --version
python3 --version
dotnet --version
docker --version

echo "All tools have been installed successfully!"
