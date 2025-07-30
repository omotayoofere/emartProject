FROM node:14 AS build_stage
WORKDIR /usr/src/app
COPY client ./client
RUN cd client && npm install && npm run build --prod

FROM nginx
COPY --from=build_stage /usr/src/app/client/dist/client /usr/share/nginx/html
COPY ./client/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 4200