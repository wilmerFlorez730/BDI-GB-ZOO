-- LOGIN WITH ADMINZOO AND CREATE THE OWN SCHEME
CREATE SCHEMA animals AUTHORIZATION adminzoo;
-- ESTABLISH BY DEFAULT PATH TO ANIMALS
SET search_path TO animals;
--- SET CLIENT INSERT IN UTF8 METACHARSET
SET client_encoding = 'UTF8';