FROM node:14 AS base_stage
WORKDIR /usr/src/app
COPY ./nodeapi .
RUN cd nodeapi && npm install

FROM node:14
COPY --from=base_stage /usr/src/app/nodeapi .
RUN cd nodeapi && npm start

EXPOSE 5000
