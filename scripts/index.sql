create unique index "unique_country_name" on country (
  name
); -- crea un indice en la columna name y es unico

create index "country_name" on country (
  continent
); -- creacion indice no unico