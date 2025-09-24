FROM python:3.10.2
 
WORKDIR /usr/src/app
 
COPY requirements.txt ./
 
RUN pip install --no-cache-dir -r requirements.txt
 
COPY . .
EXPOSE 8000
 
CMD ["uvicorn", "main.py", "-b", "0.0.0.0:8000"]
