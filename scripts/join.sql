
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