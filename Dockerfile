# Base Image
FROM python:3.12-slim

# Creating a Working Directory
WORKDIR /app

# Copy file
COPY requirements.txt .

# Installing the requirements
RUN pip install --no-cache-dir -r requirements.txt

# Copy file
COPY . .

# Indication that the app will run on port 8080
EXPOSE 8080

# Start the app.
CMD ["gunicorn","--bind","0.0.0.0:8080","app:app"]
