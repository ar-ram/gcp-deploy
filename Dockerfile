FROM python:3.9-slim

WORKDIR /app

COPY main.py .

RUN pip install flask

# Make the application listen on port 8080 (common for cloud)
CMD ["python", "main.py"]

# Expose the port Flask will run on
EXPOSE 8080
