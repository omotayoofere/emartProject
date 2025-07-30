FROM node:14 AS base_stage
WORKDIR /usr/src/app
COPY ./ ./nodeapi/
RUN cd nodeapi && npm install

FROM node:14
WORKDIR /usr/src/app
COPY --from=base_stage /usr/src/app/nodeapi/ ./
EXPOSE 5000
CMD ["/bin/sh", "-c", "cd /usr/src/app && npm start"]
