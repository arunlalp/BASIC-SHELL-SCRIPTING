#!/bin/bash

# Create user account
create_user() {
    username="$1"
    password="$username"  # Set the password same as the username
    
    # Create the user account and set the password
    if sudo useradd "$username" -m -s /bin/bash && echo "$username:$password" | sudo chpasswd; then
        echo "The account $username is created successfully."
    else
        echo "Failed to create the account $username. Exiting..."
        exit 1
    fi
}

# Create user accounts
create_user "user10"
create_user "user20"
create_user "user30"
