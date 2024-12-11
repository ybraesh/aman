# Dockerfile
# Use a lightweight Python image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy the application code to the container
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the Flask port
EXPOSE 5000

# Set the default command to run the Flask app
CMD ["python", "app.py"]
