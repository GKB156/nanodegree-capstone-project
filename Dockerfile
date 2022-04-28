FROM python:3.7.3-stretch

WORKDIR /capstone-project

COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt
# hadolint ignore=DL3013
RUN pip3 install --no-cache-dir --upgrade pip &&\
    pip3 install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

COPY public public
COPY static static
COPY app.py app.py
COPY server.py server.py

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]