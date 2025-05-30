# Use official Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Run the app
CMD ["python", "app.py"]
