# Dockerfile
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required Python packages
RUN pip install flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Define the command to run the app
CMD ["python", "app.py"]
