# Stage 1
FROM nginx:alpine
WORKDIR /
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/index.html
RUN mkdir -p /usr/share/nginx/html/app/
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
