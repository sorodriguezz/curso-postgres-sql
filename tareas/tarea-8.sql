-- mostrar el pais con mas ciudades

select count(*), b.name from city a
inner join country b on a.countrycode = b.code
group by b.name
order by count(*) desc limit 1;