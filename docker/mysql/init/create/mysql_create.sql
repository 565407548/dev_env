--
-- execute when mysql start every time
--
DROP USER IF EXISTS 'test';
CREATE USER 'test'@'%' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON *.* TO 'test'@'%';