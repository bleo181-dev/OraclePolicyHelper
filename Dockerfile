# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire contents of the current directory into the container
COPY . /app

# Install necessary packages
RUN pip install openpyxl

ENTRYPOINT [ "/app/run.sh" ]