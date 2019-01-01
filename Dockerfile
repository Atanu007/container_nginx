FROM alpine:latest

RUN apk add nginx
RUN apk add --no-cache nginx

RUN mkdir -p /var/log/nginx
RUN mkdir -p /run/nginx/
COPY index.html  /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80
CMD ["nginx","-g","daemon off;"]
