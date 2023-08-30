
select
    email,
    substring(email, position('@' in email) +1 ) as domain
from users;