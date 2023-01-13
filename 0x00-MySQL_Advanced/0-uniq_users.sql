-- Write a SQL script that creates a
table users following these requirements
-- id, int, never null, auto increment and primary key
-- email, string (255 characters), never null and unique 
-- name, string (255 characters)
-- If the table already exists, your script should not fail

CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT,
email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255));
