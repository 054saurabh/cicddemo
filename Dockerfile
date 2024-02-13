FROM python:3.9
WORKDIR /app
COPY . /app
COPY requirements.txt 
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]
