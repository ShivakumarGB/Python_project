# syntax=docker/dockerfile:1
# Use an official Python runtime as a parent image
FROM python:3.12.2-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

COPY app.py

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Expose the port your app runs on (e.g., 8000 for a web app)
EXPOSE 5000

# Define the command to run the application when the container starts
CMD ["python", "app.py"]
