FROM ubuntu:bionic

RUN apt-get update -qq
RUN apt-get install -qqy \
apt-utils \
git \
python-dev

# Install Docker & Docker Compose
RUN curl -sSL https://get.docker.com/ | sh
RUN curl -L https://github.com/docker/compose/releases/download/1.17.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

# Install Heroku CLI
RUN wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh
ENV PATH $PATH:/usr/local/heroku/bin
