FROM python:3.9-slim

RUN mkdir -p /app
WORKDIR /app

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt



# Exposing Ports
EXPOSE 8001


# Running Python Application
CMD ["python", "main.py"]


 

