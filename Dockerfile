FROM nginx:alpine

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/mime.types /etc/nginx/mime.types
WORKDIR /usr/share/nginx/html

COPY ["build/generic","/usr/share/nginx/html"]
