select country, count(*) as user_count
from user
group by country;