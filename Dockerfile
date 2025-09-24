FROM python:3.9-slim

WORKDIR /app

# Installing python dependencies
COPY app.py .
RUN pip install --no-cache-dir -r requirements.txt

# Copying src code to Container
COPY . /usr/src/app



# Exposing Ports
EXPOSE 8001


# Running Python Application
CMD ["python", "main.py"]


 

