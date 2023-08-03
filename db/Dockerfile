FROM postgres:14.6
ENV POSTGRES_DB posgres
ENV POSTRGRES_PASSWORD admin
ENV POSTGRES_USER postgres



ADD create-db-v3.sh /docker-entrypoint-initdb.d
COPY create-db-v3.sh /docker-entrypoint-initdb.d

