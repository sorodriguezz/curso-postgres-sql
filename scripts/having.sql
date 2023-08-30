
SELECT
    count(*) as total,
    country
FROM
    users
GROUP BY country
HAVING count(*) BETWEEN 1 AND 5
order by count(*) DESC;