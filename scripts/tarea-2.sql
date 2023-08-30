-- Nombre, apellido e IP, donde la última conexión se dió de 221.XXX.XXX.XXX
SELECT first_name AS nombre, last_name AS apellido, last_connection AS ip FROM users WHERE last_connection LIKE '221.%';


-- Nombre, apellido y seguidores(followers) de todos a los que lo siguen más de 4600 personas
SELECT first_name AS nombre, last_name AS apellido, followers AS seguidores FROM users WHERE followers > 4600;