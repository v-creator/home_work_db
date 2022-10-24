select a.name, a.release_year
from netology.album as a
where a.release_year = 2018;


select t.name, t.duration
from netology.track t
where t.duration = (select max(duration) from netology.track);


select t.name, t.duration
from netology.track t
where t.duration >= 3.5 * 60;


select c.name
from netology.compilation c
where c.release_year between 2018 and 2020;


select s."name"
from netology.songwriter s
where length(s.name) - length(replace(s.name, ' ', '')) = 0;


select t."name"
from netology.track t
where lower(t."name") like '%my%';