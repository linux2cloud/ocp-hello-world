FROM docker.io/centos:latest

MAINTAINER Linux2Cloud \

           info@linux2cloud.com

RUN yum install httpd -y

ENV PORT 8081

RUN sed -i -e "/^Listen 80/c\Listen ${PORT}" /etc/httpd/conf/httpd.conf && \

    chown -R apache:apache /etc/httpd/logs/ && \

    chown -R apache:apache /run/httpd/

USER apache

EXPOSE ${PORT}

COPY index.html /var/www/html/

COPY run.sh run.sh

RUN chmod 755 run.sh

CMD ["./run.sh"]
