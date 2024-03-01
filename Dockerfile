# FROM python:3.10.6

# WORKDIR /app

# COPY . /app

# COPY requirements.txt .

# RUN pip install -r requirements.txt

# CMD ["python", "app.py"]
FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

