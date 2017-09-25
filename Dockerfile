FROM nginx:stable

RUN apt-get update --fix-missing \
    && apt-get -y upgrade

RUN apt-get -y install build-essential

# Install node
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get -y install nodejs

# Install babel
RUN npm install -g babel-cli

# Install webpack
RUN npm install -g webpack

WORKDIR /home/amplitudejs
