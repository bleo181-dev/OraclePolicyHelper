#!/bin/bash

# Check if a policy string argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <policy_string>"
    exit 1
fi
policy_string=$1

# Run the Docker container with the provided policy string
python policyhelper.py -p "$policy_string"