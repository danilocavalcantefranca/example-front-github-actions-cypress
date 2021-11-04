FROM cypress/base:10

RUN mkdir automation
WORKDIR /automation
COPY ./ .

COPY package*.json ./

RUN npm install

ENV args = ''

ENTRYPOINT ${args}
