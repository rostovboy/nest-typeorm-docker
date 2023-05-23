FROM node:16

WORKDIR /app

COPY package*.json ./

# https://stackoverflow.com/questions/46111738/how-to-install-global-npm-dependencies-in-docker
# optionally if you want to run npm global bin without specifying path
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

COPY . .
