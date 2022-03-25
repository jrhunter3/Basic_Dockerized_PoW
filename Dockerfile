# set the base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt .

# install the dependencies
RUN pip install -r requirements.txt

# copy the content of the local src directory to the working directory
COPY src/ .

ADD . /app

EXPOSE 1026

# command to run on container start
CMD [ "python", "./server.py" ]
