FROM python:2.7

WORKDIR /app

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir -r requirement.txt

COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
