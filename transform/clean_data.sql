-- Convert all emails to lowercase
update users
set email = lower(email)
where email is not null;


-- Fill missing country values with 'Unknown'
update users
set country ='Unknown'
where country is nulll