# syntax=docker/dockerfile:1
# Use an official Python runtime as a parent image
FROM python:3.12.2-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt ./

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code into the container
COPY . .

# Expose the port your app runs on (e.g., 8000 for a web app)
EXPOSE 8000

# Define the command to run the application when the container starts
CMD ["python", "app.py"]
