SELECT
  COUNT(*),
  followers
FROM
  users
WHERE
  followers = 4 OR followers = 4999
GROUP BY
  followers;




select
    count(*) as cantidad,
    substring(email, position('@' in email) +1 ) as domain
from users
GROUP BY domain
having count(*) > 1
order by cantidad desc;