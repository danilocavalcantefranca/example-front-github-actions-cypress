FROM cypress/base:10

RUN mkdir automation
WORKDIR /automation

COPY package*.json ./

RUN npm install
COPY ./ .
#ENV args = ''

ENTRYPOINT npx cypress run --config baseUrl=http://node:3000/ --config video=false


#docker-compose up --force-recreate
#docker-compose up --build --abort-on-container-exit
#docker-compose run app -e environment='99-b2b-iam-stg'
#docker run -it -e "environment=99-b2b-iam-stg" b2b-test-jenkins bashß