FROM nginx:alpine
COPY *.html /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd
ARG PAGE_PASSWORD
RUN echo $PAGE_PASSWORD > /etc/nginx/.htpasswd