FROM python:2.7

WORKDIR /app

COPY requirement.txt /tmp/requirement.txt

RUN pip install --no-cache-dir -r requirement.txt

COPY app/ .

EXPOSE 5000

CMD ["python", "app.py"]
