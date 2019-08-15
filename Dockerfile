FROM circleci/python:2.7
#RUN apt-get update -y
#RUN apt-get install -y python-pip python-dev build-essential
COPY requirements.txt .
RUN pip install --user -r requirements.txt
COPY . . 
CMD python run.py
