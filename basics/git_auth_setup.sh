#!/bin/bash

# Prompt for GitHub username
read -p "Enter your GitHub username: " username

# Prompt for personal access token
read -sp "Enter your GitHub personal access token: " token
echo

# Set git configurations
git config --global user.name "$username"
git config --global credential.helper store

# Store the credentials
echo "https://$username:$token@github.com" > ~/.git-credentials

echo "GitHub credentials have been set up successfully."

# Clone the repository
repo_url="https://github.com/sananvh/holbertonschool-shell.git"
git clone "$repo_url"

if [ $? -eq 0 ]; then
    echo "Repository cloned successfully."
else
    echo "Failed to clone the repository. Please check your token and try again."
fi
