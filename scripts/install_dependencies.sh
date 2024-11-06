#!/bin/bash

# Update package list and install Node.js if not installed
echo "Checking for Node.js and npm..."
if ! command -v node &> /dev/null
then
    echo "Node.js not found. Installing Node.js and npm..."
    sudo yum update -y
    sudo yum install -y nodejs npm
else
    echo "Node.js and npm are already installed."
fi

# Navigate to the app's directory
cd /var/www/html

# Install npm dependencies (both dependencies and devDependencies from package.json)
echo "Installing npm dependencies..."
npm install

echo "Dependency installation completed."
