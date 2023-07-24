--Задание номер 2

select track_name, duration
from track
where duration = (select max(duration) from track);

select track_name, duration
from track
where duration >= 210;

select collection_name, collection_release
from collection
where collection_release between 2018 and 2022;

select executor_name
from executor
where executor_name not like '% %';

select track_name
from track
where lower(track_name) like 'my %' or lower(track_name) like '% my' or lower(track_name) like '% my %' or lower(track_name) like 'мой %'
or lower(track_name) like '% мой' or lower(track_name) like '% мой %' or lower(track_name) like 'мой' or lower(track_name) like 'my';

--Задание номер 3

select genre_name, count(executor_name) from executor e
join executor_genre ge  on e.executor_id = ge.executor_id
join genre g on ge.genre_id = g.genre_id
group by g.genre_id;

select count(track_name) from track t
join album a on a.album_id = t.album_id
where a.year_of_release between 2019 and 2020;

select album_name, AVG(duration) from track t
join album a on a.album_id = t.album_id
group by a.album_name;

select executor_name from executor e
where executor_name not in (
select executor_name from album a
join executor_album ea on a.album_id = ea.album_id
join executor e on ea.executor_id = e.executor_id
where a.year_of_release = 2020);

select collection_name from collection c
join collection_track ct on c.collection_id = ct.collection_id
join track t on ct.track_id = t.track_id
join album a on t.album_id = a.album_id
join executor_album ea on a.album_id = ea.album_id
join executor e on ea.executor_id = e.executor_id
where e.executor_name like 'Big Baby Tape';