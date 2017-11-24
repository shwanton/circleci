FROM node:9.2-slim

RUN apt-get update -qq
RUN apt-get install -qqy \
apt-utils \
python-dev

# Install Docker & Docker Compose
RUN curl -sSL https://get.docker.com/ | sh
RUN curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
