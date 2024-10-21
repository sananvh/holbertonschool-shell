#!/bin/bash

# Request the file name
echo "Enter the file name:"
read filename

# Create the file and ask for content
echo "Enter the content for the file (press Ctrl+D when finished):"
cat > "$filename"

# Make the file executable
chmod +x "$filename"

# Add the file to git
git add "$filename"

# Commit with the file name as the message
git commit -m "$filename"

# Push the changes
git push

echo "File $filename has been created, made executable, added, committed, and pushed to git."
