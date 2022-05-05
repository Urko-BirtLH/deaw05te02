FROM mysql:8.0.13
COPY ./sql/create-user-table.sql /docker-entrypoint-initdb.d/
COPY ./sql/student.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
CMD ["mysqld"]