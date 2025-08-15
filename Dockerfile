# Step 1: Base image
FROM python:3.9-slim

# Step 2: Working directory
WORKDIR /app

# Step 3: Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Step 4: Copy all files
COPY . .

# Step 5: Expose port
EXPOSE 5000

# Step 6: Command to run app
CMD ["python", "app.py"]
