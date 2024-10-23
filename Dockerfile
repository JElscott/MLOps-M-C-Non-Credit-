{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "bc88d42f-429c-41e6-8177-0aa9dd2fab00",
   "metadata": {},
   "outputs": [
    {
     "ename": "SyntaxError",
     "evalue": "invalid syntax (2039253783.py, line 2)",
     "output_type": "error",
     "traceback": [
      "\u001b[0;36m  Cell \u001b[0;32mIn[1], line 2\u001b[0;36m\u001b[0m\n\u001b[0;31m    FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9  # Using FastAPI with Python 3.9\u001b[0m\n\u001b[0m         ^\u001b[0m\n\u001b[0;31mSyntaxError\u001b[0m\u001b[0;31m:\u001b[0m invalid syntax\n"
     ]
    }
   ],
   "source": [
    "# Choose an appropriate base image\n",
    "FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9  # Using FastAPI with Python 3.9\n",
    "\n",
    "# Set the working directory inside the container\n",
    "WORKDIR /app\n",
    "\n",
    "# Copy the requirements file and install dependencies\n",
    "COPY requirements.txt .\n",
    "RUN pip install --no-cache-dir -r requirements.txt\n",
    "\n",
    "# Copy the rest of the application files\n",
    "COPY . .\n",
    "\n",
    "# Set up the command to run your FastAPI application\n",
    "CMD [\"uvicorn\", \"main:app\", \"--host\", \"0.0.0.0\", \"--port\", \"8000\"]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "3f624c0a-c9fb-46da-b895-22d2ecbe5880",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.9"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
