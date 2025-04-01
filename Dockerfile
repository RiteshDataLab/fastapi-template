# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the app code and install dependencies
COPY app/ app/
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Expose the FastAPI app on port 8000
EXPOSE 8000

# Command to run the FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
