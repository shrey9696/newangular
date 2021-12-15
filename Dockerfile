FROM nginx:latest

LABEL maintainer="shrey"


#HEALTHCHECK --interval=50s --timeout=30s --retries=3 \
# CMD curl --silent --fail localhost:80 || exit 1

RUN  mkdir /opt/test 
RUN  rm /etc/nginx/conf.d/*

COPY ./docker/ngnix/ngnix.conf /etc/nginx/nginx.conf
COPY ./docker/ngnix/conf.d/ /etc/nginx/conf.d/
#COPY dist/ /usr/share/nginx/html/
COPY dist/ /usr/share/nginx/html/
