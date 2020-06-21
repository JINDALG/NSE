# pull official base image
FROM python:3.8.0

# set work directory
WORKDIR /home/workspace/nse

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
#RUN apt-get update && apt-get install redis-server

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt ./requirements.txt

# RUN pip uninstall -r requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . ./

RUN chmod 777 -R ./

# run entrypoint.sh
ENTRYPOINT ["/home/workspace/nse/entrypoint.sh"]
