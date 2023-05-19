#!/bin/bash

# Display hostname
hostname=$(hostname)
echo "Hostname: $hostname"

# Display system information
system_info=$(uname -a)
echo "System Information: $system_info"

# Display currently logged-in users
logged_in_users=$(who)
echo "Currently Logged-in Users:"
echo "$logged_in_users"
