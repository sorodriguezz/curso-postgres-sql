
-- para poner a empleados en un rango segun la cantidad de años
select first_name,
       last_name,
       hire_date,
       CASE
           when hire_date > now() - interval '1 year' then 'Rango A'
           -- when hire_date > now() - interval '3 year' then 'Rango B'
           else 'Rango D' END as rango_antiguedad
from employees