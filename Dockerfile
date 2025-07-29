FROM nginx
WORKDIR /usr/src/app
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80