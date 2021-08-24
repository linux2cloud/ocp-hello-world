FROM docker.io/mysql:latest

MAINTAINER Linux2Cloud \

           info@linux2cloud.com

ENV MYSQL_USER "user1"
ENV MYSQL_PASSWORD "redhat123" 
ENV MYSQL_DATABASE "testdb"
ENV MYSQL_ROOT_PASSWORD "redhatroot123"

EXPOSE 3306
