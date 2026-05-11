FROM nginx:latest

RUN echo "<h1>Hello Omar - Docker + Jenkins</h1>" > /usr/share/nginx/html/index.html

EXPOSE 80
