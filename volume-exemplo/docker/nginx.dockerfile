FROM nginx:latest
MAINTAINER Cassius Mendes
COPY /public /var/www/public
COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT ["nginx"]
# Parâmetros extras para o entrypoint
CMD ["-g", "daemon off;"]