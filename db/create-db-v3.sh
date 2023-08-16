#!/bin/bash
psql -U postgres <<-EOSQL
    CREATE USER postgres WITH PASSWORD 'postpass';
    CREATE DATABASE db;
    GRANT ALL PRIVILEGES ON DATABASE db TO postgres;
    \connect db postgres
EOSQL
