# pull official base image
FROM python:3.8.0

# set work directory
WORKDIR /home/workspace/nse

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apt-get update -y && apt-get install -y build-essential default-libmysqlclient-dev default-mysql-client

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt ./requirements.txt

# RUN pip uninstall -r requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . ./

RUN chmod 777 -R ./

