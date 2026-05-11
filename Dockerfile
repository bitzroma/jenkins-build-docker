FROM nginx:latest
RUN sed -i 's/nginx/omar/g' /usr/share/nginx/html/index.html
EXPOSE 80
