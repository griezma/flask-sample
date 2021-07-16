FROM python:3-slim-buster

WORKDIR /application
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY app.py .

EXPOSE 5000
ENV FLASK_APP=app

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
