FROM python:3

MAINTAINER Dockerfiles

# Install required packages and remove the apt packages cache when done.

RUN pip3 install -U pip

# to prevent re-installing (all your) dependencies when you made a change a line or two in your app.
COPY requirements/production.txt /home/docker/code/
COPY requirements/base.txt /home/docker/code/

# Install all the dependecies
RUN pip3 install -r /home/docker/code/production.txt

# add (the rest of) our code
COPY . /home/docker/code/

WORKDIR /home/docker/code/

EXPOSE 443