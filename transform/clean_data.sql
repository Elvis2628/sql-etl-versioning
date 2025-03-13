-- Convert all emails to lowercase
update users
set email = lower(email)
where email is not null;


-- Fill missing country values with 'Unknown'
update users
set country ='Unknown'
where country is null


-- Remove duplicate email addresses, keeping the oldest entry
delete from users
where id not in (
	select min(id) from users
group by email
);