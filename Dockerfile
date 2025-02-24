FROM python:3

LABEL version="1.0"
LABEL maintainer="Ian Ansell"


#RUN apt-get update -y   
#RUN apt-get install --no-install-recommends --no-install-suggests -y curl 
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* 

RUN pip install --upgrade pip

COPY . /cloud-run-creds

WORKDIR /cloud-run-creds

RUN pip install --no-cache-dir -r requirements.txt


ENV PORT 8080

CMD python app.py