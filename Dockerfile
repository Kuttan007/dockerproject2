FROM nginx
RUN apt update -y && apt install procps vim -y
WORKDIR /usr/share/nginx/html/
COPY index.html .
WORKDIR /etc/nginx/conf.d/
COPY  default.conf .
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
