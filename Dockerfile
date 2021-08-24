FROM docker.io/centos:latest
LABEL description="This is a custom httpd container image"
MAINTAINER Linux2Cloud
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
