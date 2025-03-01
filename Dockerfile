# Use the official Python image
FROM python:latest

# Set the working directory inside the container
WORKDIR /app1

# Copy the application files into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir flask mysql-connector-python

# Expose port 9090 for the Flask app
EXPOSE 9090

# Run the Flask application
CMD ["python", "app.py"]