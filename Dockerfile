FROM kilna/liquibase-mysql

RUN apk update
RUN apk upgrade
RUN apk add bash

ENV LIQUIBASE_HOST=127.0.0.1

ENV LIQUIBASE_PORT=3306

ENV LIQUIBASE_DATABASE=test_liquibase

ENV LIQUIBASE_USERNAME=root

ENV LIQUIBASE_PASSWORD=root

ENV LIQUIBASE_CHANGELOG=changelog.xml

ENV LIQUIBASE_LOGLEVEL=info

ENV LIQUIBASE_CLASSPATH=/opt/jdbc/mysql-jdbc.jar

ENV LIQUIBASE_DRIVER=com.mysql.jdbc.Driver
ENV LIQUIBASE_URL=jdbc:mysql://${HOST}:${PORT}/${DATABASE}


COPY changelog.xml /workspace