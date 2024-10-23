# Choose an appropriate base image
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9  # Using FastAPI with Python 3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Set up the command to run your FastAPI application
CMD ["uvicorn", "fastapi_app:app", "--host", "0.0.0.0", "--port", "8000"]
