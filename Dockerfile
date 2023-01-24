FROM nginx:1.23.3-alpine-slim
ADD https://raw.githubusercontent.com/digitalake/nginx-templates/main/index.html /usr/share/nginx/html/
RUN chmod 644 /usr/share/nginx/html/index.html