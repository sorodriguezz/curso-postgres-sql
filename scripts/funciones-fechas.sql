-- funciones propias de BBDD
select now(), current_date, current_time, CURRENT_USER, date_part('minutes', now());

-- fecha mayor a...
select * from employees where hire_date > '1998-02-05' order by hire_date desc;

-- fecha maxima y minima
select max(hire_date)  as mas_nuevo , min(hire_date) as primer_empleado from employees;

-- buscar entre 2 fechas
select * from employees where hire_date between '1999-01-01' and '2000-01-01' order by hire_date desc;

-- para sumar dias a una fecha
select max(hire_date),
       max(hire_date) + INTERVAL '1 month',
       max(hire_date) + INTERVAL '1 days',
       max(hire_date) + INTERVAL '1 year',
       max(hire_date) + INTERVAL '1 year' + INTERVAL '1 month',
       date_part('year', now()),
       make_interval(years := date_part('year', now())::integer),
       max(hire_date)+ make_interval(years := 23)
from employees;