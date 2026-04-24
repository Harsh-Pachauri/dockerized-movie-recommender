# Use official Python 3.10 base image
FROM python:3.10

# Set working directory inside container
# All subsequent commands will run from /app
WORKDIR /app

# Copy entire project from local machine to container
COPY . /app

# Install Python dependencies from requirements.txt
# --no-cache-dir reduces image size by not storing cache
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 (Flask default)
# This is for documentation; actual port binding happens at runtime
EXPOSE 5000

# Run the Flask application
# Using shell form to allow flexibility (e.g., env variables if needed)
CMD ["sh", "-c", "python app.py"]