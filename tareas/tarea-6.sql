-- Tarea con countryLanguage

-- Crear la tabla de language

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS language_code_seq;


-- Table Definition
CREATE TABLE "public"."language" (
    "code" int4 NOT NULL DEFAULT 	nextval('language_code_seq'::regclass),
    "name" text NOT NULL,
    PRIMARY KEY ("code")
);

-- Crear una columna en countrylanguage
ALTER TABLE countrylanguage
ADD COLUMN languagecode varchar(3);


-- Empezar con el select para confirmar lo que vamos a actualizar
insert into language (name) select distinct language from countrylanguage order by language;

-- Actualizar todos los registros
select language, (select code from language b where a.language = b.name) from countrylanguage a;
update countrylanguage a
set languagecode = (select code from language b where a.language = b.name) where 1 = 1;

-- Cambiar tipo de dato en countrylanguage - languagecode por int4
alter table countrylanguage alter column languagecode type int4 USING languagecode::integer;

-- Crear el forening key y constraints de no nulo el language_code
alter table public.countrylanguage
    add constraint countrylanguage_language_code_fk
        foreign key (languagecode) references public.language;

-- Revisar lo creado