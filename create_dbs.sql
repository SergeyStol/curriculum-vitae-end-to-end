-- Simulate CREATE DATABASE IF NOT EXISTS for PostgreSQL
-- https://stackoverflow.com/questions/18389124/simulate-create-database-if-not-exists-for-postgresql

SELECT 'CREATE DATABASE industry_srv'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'industry_srv')\gexec

SELECT 'CREATE DATABASE experience_srv'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'experience_srv')\gexec

SELECT 'CREATE DATABASE keycloak_service'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'keycloak_service')\gexec
