FROM nginx:1.29.4-alpine-slim

LABEL maintainer="Sergey Melnick"
LABEL version="1.0"

COPY nginx.conf /etc/nginx/
COPY bp.jpeg /var/www/html/
COPY index.html /var/www/html/

RUN chown -R nginx:nginx /var/www &&\
  chmod -R 644 /var/www/html/*

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
