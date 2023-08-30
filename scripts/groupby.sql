SELECT
  COUNT(*),
  followers
FROM
  users
WHERE
  followers = 4 OR followers = 4999
GROUP BY
  followers;