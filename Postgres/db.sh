### Working with Database

# Create a db
CREATE DATABASE <db_name>;
createdb <db_name>
CREATEDB <db_name>

# Switch (connect) to db
\connect <db_name>
\c <db_name>

# Login to db
psql <db_name>

# List all databases
\l

# List all commands
\?

# Quit Postgres CLI
\q

List roles
\dg

# Show all tables (CLI & SQL)
\dt
SELECT * FROM db_name.pg_tables;

# Create a table with options
CREATE TABLE users (
	user_id serial PRIMARY KEY,
	username VARCHAR (50) UNIQUE NOT NULL,
	password VARCHAR (50) NOT NULL,
	email VARCHAR (255) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
  last_login TIMESTAMP
  # foreign key new syntax
  content_id uuid references content(id),
);

# Drop table
DROP TABLE users;

# Update a column data type
ALTER TABLE tbl_name ALTER COLUMN col_name TYPE varchar(11);
ALTER TABLE users ALTER COLUMN user_password TYPE text;

# Update a column data null constraint
ALTER TABLE users ALTER COLUMN session_id SET NOT NULL;

# Drop database
DROP DATABASE users;

# Add a column
ADD COLUMN content_id uuid references content(id);

# Show a table contents
SELECT * FROM TABLE "users";
SELECT * FROM TABLE "users" LIMIT 10;

# Relational join (with foreign key)
# change select to insert or anything as needed
SELECT
  users.id, users.email, users.user_password, content.user_id, content.title
FROM
  users
INNER JOIN
  content
ON
  users.id=content.user_id
WHERE
  users.email='test@test.com';
