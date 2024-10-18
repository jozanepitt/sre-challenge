FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy only requirements first (leverage Docker caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Create a non-root user and switch to it
RUN useradd -m myuser
USER myuser

# Expose the app on port 5000
EXPOSE 5000

# Run the Flask application
CMD ["python", "app.py"]

