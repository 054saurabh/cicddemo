FROM python:3.10.6

WORKDIR /app
COPY . /app
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
