
select cl.language, count(*), lg.code
from countrylanguage cl
         inner join country cy ON cl.countrycode = cy.code
         inner join continent ct ON cy.continent = ct.code
         inner join language lg ON lg.code = cl.languagecode
where cl.isofficial = true
  and ct.code = 5
group by cl.language, lg.code
order by count(*) desc limit 1;

select *
from country a
         inner join countrylanguage b on a.code = b.countrycode
where a.continent = 5 and b.isofficial = true and b.languagecode = 135;