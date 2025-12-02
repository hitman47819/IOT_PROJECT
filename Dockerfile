# Example Dockerfile for API, Worker, and Generator
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files into the container
COPY . .

# Install dependencies (assumes a requirements.txt file is present)
RUN pip install -r requirements.txt

# Set the target as per the service (api, worker, generator)
# Example for API service:
# For `api` you might run something like:
CMD ["python", "app.py"]
