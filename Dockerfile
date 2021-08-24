FROM docker.io/centos:latest
MAINTAINER Linux2Cloud \
           info@linux2cloud.com
RUN yum install httpd -y
RUN chown -R apache:apache /etc/httpd/logs/ && \
    chown -R apache:apache /run/httpd/
USER apache
EXPOSE 80
COPY index.html /var/www/html/
CMD ["httpd", "-D", "FOREGROUND"]

