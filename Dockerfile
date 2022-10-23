FROM python:3.8-slim-buster
WORKDIR /app
ADD requirements.txt .
RUN pip install -r requirements.txt
ADD ./app.py app.py
EXPOSE 9090
ENTRYPOINT ["python3", "app.py"]
