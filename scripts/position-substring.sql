-- Devuelve nombre y apellido si el nombre es 'Sebastian Rodriguez'
SELECT
  name,
  SUBSTRING(name, 0, POSITION(' ' in name)) AS first_name,
  TRIM(SUBSTRING(name, POSITION(' ' in name))) AS last_name
FROM users;