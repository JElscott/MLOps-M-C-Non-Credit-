
# FastAPI Model Deployment with AWS SageMaker

## Project Overview

This project demonstrates how to build and deploy a machine learning model using **FastAPI** for serving the model, **PyTorch** for model building, and **Weights & Biases (WandB)** for logging and monitoring. The model is a logistic regression classifier trained on the MNIST dataset. The code was run in **AWS SageMaker** to minimize costs, so Docker deployment was not spun up (to avoid EC2 instance costs), but the Dockerfile is provided and should work. Also, the CI/CD pipeline was not fully tested, as there are restrictions interacting with a private github repo and our enterprise AWS accounts.

## Instructions for Running the Code in AWS SageMaker (Recommended)

It is recommended to run this project within **AWS SageMaker** for ease of use. You can clone the repository and execute the notebooks directly within SageMaker.

### Running in AWS SageMaker

1. **Clone the repository within SageMaker**:
   - Navigate to the JupyterLab interface in SageMaker.
   - Open a terminal and clone the repository:
     ```bash
     git clone https://github.com/JElscott/MLOps-M-C-Non-Credit-.git
     ```

2. **Run the notebooks**:
   - Open and run `model.ipynb` to create the model using **PyTorch** and enable model monitoring and logging with **Weights & Biases (WandB)**.
   - Once the model is trained and logged, open and run `fastapi_app.ipynb` to serve the model using **FastAPI**.

## Instructions for Running the Code Locally

To run the FastAPI app and model locally:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/JElscott/MLOps-M-C-Non-Credit-.git
   ```

2. **Set up a virtual environment and install dependencies**:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

3. **Run the model notebook**:
   - Open and run `model.ipynb`. This will create the model using **PyTorch** and set up model monitoring and logging with **Weights & Biases (WandB)**.

4. **Run the FastAPI app**:
   - Once the model is completed, run `fastapi_app.ipynb` directly in Jupyter or convert it to a Python script:
     ```bash
     jupyter nbconvert --to script fastapi_app.ipynb
     python fastapi_app.py
     ```

   This will run the FastAPI app locally at `http://127.0.0.1:8000`.

## Instructions for Building and Running the Docker Container

While Docker wasn't deployed due to cost constraints, you can build and run the Docker container locally with the following steps:

1. **Build the Docker image**:
   ```bash
   docker build -t fastapi-ml-app .
   ```

2. **Run the Docker container**:
   ```bash
   docker run -p 8000:8000 fastapi-ml-app
   ```
   Access the app at `http://127.0.0.1:8000`.

## WandB Report

All training and experiment logs are tracked using **Weights & Biases (WandB)**. You can view the training details, including validation accuracy, training loss, gradient norms, and learning rates for all runs:

[WandB Report](https://wandb.ai/joelelscott-iowa-state-university/mnist-mlops?nw=nwuserjoelelscott)

### Validation Accuracy Results:
- Run 1: **90.6%**
- Run 2: **98.15%**
- Run 3: **95.12%**

Check the WandB report for more details on **training loss**, **gradient norms**, and **learning rates**.
