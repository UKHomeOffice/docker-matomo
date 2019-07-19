/* Note: This is template file to create database and user for matomo.
   While using docker-compose, this file has to update with actual names in
   order to create database and user automatically along with mysql image */

CREATE DATABASE dbname;

CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'dbpassword';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON dbname.* TO 'dbuser'@'localhost';

GRANT FILE ON *.* TO 'dbuser'@'localhost';
