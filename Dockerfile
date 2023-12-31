FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY DemoApp /app

EXPOSE 8001

CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
