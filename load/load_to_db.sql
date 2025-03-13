-- Create table if not exists cleaned_users (
id serial primary key,
name varchar(100),
email varchar(50),
country varchar(50)
);

-- Insert cleaned data into the cleaned_users table


insert into cleaned_users (id, name, email, country)
select distinct name, email, country
from users
where email is not null;