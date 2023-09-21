-- cambiar tipo de dato de una columna
alter table country alter column continent type int4 USING continent::integer;

-- altera una secuencia de la tabla
alter sequence continent_code_seq restart with 3;