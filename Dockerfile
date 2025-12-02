# Use a base image
FROM python:3.9-slim AS base

# Set working directory
WORKDIR /app

# Copy files into the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# --------- Stage for API ---------
FROM base AS api
CMD ["python", "api_app.py"]

# --------- Stage for Worker ---------
FROM base AS worker
CMD ["python", "worker_app.py"]

# --------- Stage for Generator ---------
FROM base AS generator
CMD ["python", "generator_app.py"]
