
-- Consulta sin join
select a.name, b.name from country a, continent b
where a.continent = b.code
order by a.name;

-- Inner join
select a.name, b.name from country a
inner join continent b on a.continent = b.code
order by  a.name;

-- full outer join
select a.name, a.continent, b.name as continentName from country a
full outer join continent b on a.continent = b.code
order by  a.name;

-- right outer join - exclusive
SELECT *
FROM country A
RIGHT JOIN continent B
ON A.continent = B.code
WHERE A.continent IS NULL

-- aggregations + joins
(select count(*) as count, b.name from country a
inner join continent b on a.continent = b.code
group by b.name)
union
(select 0 as count, b.name from country a
right join continent b on a.continent = b.code
where a.continent is null
group by b.name)
order by count;

-- multiples join con agrupacion
select count(*), continent from
    (select distinct a.language, c.name as continent
      from countrylanguage a
               inner join country b on a.countrycode = b.code
               inner join continent c on b.continent = c.code
      where a.isofficial = true) as totales
group by continent
