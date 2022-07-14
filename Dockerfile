FROM python:3.10

RUN mkdir -p /usr/src/main
WORKDIR /usr/src/main

COPY . /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "main.py"]