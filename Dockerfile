FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt /app

COPY DemoApp /app

RUN 
    pip3 install -r requirements.txt
    cd DemoApp

EXPOSE 8000

CMD python manage.py runserver

