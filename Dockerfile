FROM nginx

ADD ./html /root/html
ADD ./app.conf /etc/nginx/conf.d/app.conf

RUN mkdir /root/logs
RUN chmod 755 -R /root

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
