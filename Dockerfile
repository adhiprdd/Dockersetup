FROM python:2.7

# Creating Application Source Code Directory
RUN mkdir -p /usr/src/app

# Setting Home Directory for containers
WORKDIR /usr/src/app

# Installing python dependencies
COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

# Copying src code to Container
COPY . /usr/src/app

# Application Environment variables
#ENV APP_ENV development
ENV PORT 8000

# Exposing Ports
EXPOSE $PORT


# Running Python Application
CMD ["python", "main.py", "-b", "0.0.0.0:8000"]


 

