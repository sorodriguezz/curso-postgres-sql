alter table country add check(surfacearea >= 0); -- agrega una condición para que surfacearea siempre sea mayor a cero
alter table country add primary key (code); -- agrega primary key a una columna

alter table country add check (
  (continent = 'Asia') or
  (continent = 'South America') or
  (continent = 'North America') or
  (continent = 'Oceania') or
  (continent = 'Antarctica') or
  (continent = 'Africa') or
  (continent = 'Europe')
);

alter table country add check (continent in (
  'Asia',
  'South America',
  'North America',
  'Oceania',
  'Antarctica',
  'Africa',
  'Europe'
));

alter table country drop constraint country_continent_check; -- alimina un constraint