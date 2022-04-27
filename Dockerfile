FROM python:3.8.1-slim-buster

WORKDIR /capstone-project

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY public public
COPY static static
COPY app.py app.py
COPY server.py server.py

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]