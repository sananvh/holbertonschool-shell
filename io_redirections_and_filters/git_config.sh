#!/bin/bash

# Function to validate email format
validate_email() {
    if [[ "$1" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$ ]]; then
        return 0
    else
        return 1
    fi
}

# Request username
read -p "Enter your username: " username

# Request and validate email
while true; do
    read -p "Enter your email: " email
    if validate_email "$email"; then
        break
    else
        echo "Invalid email format. Please try again."
    fi
done

# Perform authentication (replace this with your actual authentication logic)
if [ "$username" = "admin" ] && [ "$email" = "admin@example.com" ]; then
    echo "Authentication successful!"
else
    echo "Authentication failed. Invalid username or email."
fi
