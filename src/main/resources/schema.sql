--create table if not exists manager(
--  id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
--  name varchar(250)
--);
--CREATE TABLE Users if not exists(
--  userId UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
--  fullName VARCHAR(250),
--  mobNum  VARCHAR(10),
--  panNum  VARCHAR(10),created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--  isActive BOOLEAN DEFAULT TRUE,
--  managerId UUID,
--  FOREIGN KEY (managerId) REFERENCES manager(id)
--);