#!/bin/bash

# Navigate to the parent directory
cd ..

# Remove the problematic directory from git index
git rm --cached basics/holbertonschool-shell

# Remove the .git directory from the embedded repository
rm -rf basics/holbertonschool-shell/.git

# Add the changes
git add basics/holbertonschool-shell

# Commit the changes
git commit -m "Remove embedded git repository and add contents directly"

echo "The embedded git repository has been removed and its contents added directly to the main repository."
