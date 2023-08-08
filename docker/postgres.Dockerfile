FROM postgres:15.3-alpine
COPY ./config/postgres/scripts/ /docker-entrypoint-initdb.d/