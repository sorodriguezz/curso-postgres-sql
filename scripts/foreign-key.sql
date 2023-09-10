alter table city
    add constraint fk_country_code
    FOREIGN KEY (countrycode)
    references country(code); -- ON DELETE CASCADE

alter table countrylanguage
    add constraint fk_country_code
    FOREIGN KEY (countrycode)
    references country(code);