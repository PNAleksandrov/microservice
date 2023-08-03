set -e

psql -v ON_ERROR_STOP=1 --username "postgres" --dbname "postgres" --password "admin" <<-EOSQL
    -- test
    create role test login password 'test';
    create database test owner test;
    \c test
    create extension if not exists "ltree";
    create extension if not exists "uuid-ossp";
    create extension if not exists "postgres_fdw";
EOSQL