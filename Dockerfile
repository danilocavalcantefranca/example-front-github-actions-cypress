FROM cypress/base:10

RUN mkdir automation
WORKDIR /automation
COPY ./ .

COPY package*.json ./

RUN npm install

#ENV args = ''

ENTRYPOINT npx cypress run --config baseUrl=http://localhost:3000/ --config video=false


#docker-compose up --force-recreate
#docker-compose build --build-arg environment='99-b2b-iam-prd'
#docker-compose run app -e environment='99-b2b-iam-stg'
#docker run -it -e "environment=99-b2b-iam-stg" b2b-test-jenkins bashß