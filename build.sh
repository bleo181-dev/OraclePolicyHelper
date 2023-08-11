#!/bin/bash
version="v1.0"

# Build the Docker image
docker build -q -t policy_helper:$version . 

# tag image as stable
docker tag policy_helper:$version policy_helper:stable