#!/bin/bash

# Request the file name
echo "Enter the file name:"
read filename

# Make the file executable
chmod +x "$filename"

# Add the file to git
git add "$filename"

# Commit with the file name as the message
git commit -m "$filename"

# Push the changes
git push

echo "File $filename has been made executable, added, committed, and pushed to git."
