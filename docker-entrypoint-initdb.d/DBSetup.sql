CREATE DATABASE <dbname>;

CREATE USER '<dbuser>' IDENTIFIED BY '<dbpassword>'@'<mysqlhostname>';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON <dbname>.* TO '<dbuser>'@'<mysqlhostname>';

GRANT FILE ON *.* TO '<dbuser>'@'<mysqlhostname>';
