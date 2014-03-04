FROM ubuntu:12.04
MAINTAINER Charles Hsu <charles0126@gmail.com>

RUN apt-get update
RUN apt-get install -y python-pip 
RUN pip install virtualenvwrapper
RUN mkdir -p ~/Envs
RUN echo "export WORKON_HOME=~/Envs" > ~/.bashrc
RUN echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc 

RUN /bin/bash -c 'source ~/.bashrc; mkvirtualenv robot; pip install robotframework'

