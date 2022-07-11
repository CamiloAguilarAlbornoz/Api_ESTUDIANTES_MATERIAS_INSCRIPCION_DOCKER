FROM mysql
ENV MYSQL_ROOT_PASSWORD=my-secret-pw
COPY ./database.sql /docker-entrypoint-initdb.d
EXPOSE 3306