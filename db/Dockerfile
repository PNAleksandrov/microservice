FROM postgres:14.8
ENV POSTGRES_HOST_AUTH_METHOD=trust
#ENV POSTGRES_PASSWORD=postpass
#ENV POSTGRES_DB=posgres
#ENV POSTGRES_USER=postgres



ADD create-db-v3.sh /docker-entrypoint-initdb.d
COPY create-db-v3.sh /docker-entrypoint-initdb.d

