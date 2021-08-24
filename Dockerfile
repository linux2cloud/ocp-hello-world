FROM docker.io/mysql:latest

MAINTAINER Linux2Cloud \

           info@linux2cloud.com

ENV MYSQL_USER "user1" \
    MYSQL_PASSWORD "redhat123" \
    MYSQL_DATABASE "testdb" \
    MYSQL_ROOT_PASSWORD "redhatroot123"

EXPOSE 3306
