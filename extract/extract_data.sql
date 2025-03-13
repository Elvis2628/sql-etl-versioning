-- Create the users table (if it doesn't exist)
create table if not exists users (
id serial primary key,
name varchar(100),
email varchar(100),
country varchar(50)
);


-- Load data from a CSV file into the users table
copy users(name, email, country)
from "c:/users/elvix/OneDrive/desktop/sql-etl-versioning/users.csv"
delimiter ","
csv header;