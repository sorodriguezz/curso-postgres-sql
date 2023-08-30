select * from (select count(*)                                     as cantidad,
                      substring(email, position('@' in email) + 1) as domain
               from users
               GROUP BY domain
               having count(*) > 1
               order by cantidad desc
) as email_domains where cantidad = 5;