#!/bin/bash

# Find files owned by new_user with size between 30KB and 50KB and copy them to /tmp/
find / -type f -user new_user -size +30k -size -50k -exec cp {} /tmp/ \;

# Display the number of files copied
count=$(find /tmp/ -type f | wc -l)
echo "$count files owned by new_user and with size between 30KB and 50KB have been copied to /tmp/"
