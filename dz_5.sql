

select count(id_singers)
from gs
group by id_genres 

select count(id_tracks) 
from tracks t 
join albums a on a.id_albums = t.id_albums 
where a.year_create = 2019 or a.year_create = 2020

select avg(duration) , id_albums 
from tracks t 
group by id_albums 

select id_singers 
from singers_albums sa 
join albums a on a.id_albums = sa.id_albums 
where a.year_create != 2020

select m.title_mix   
from  singers_albums sa 
join singers s on s.id_singers = sa.id_singers 
join albums a on a.id_albums =sa.id_albums 
join tracks t on t.id_albums = a.id_albums 
join mix_track mt on mt.id_tracks = t.id_tracks 
join mix m on m.id_mix = mt.id_mix 
where s.name_singers = 'Metalica'



select * from albums a 

insert into singers_albums  (id_singers, id_albums)
values(1, 18),
(3, 18);
select * from singers_albums sa 

select *
from
(
select  count(g.id_genres ) as m, a.title_albums 
from albums a 
join singers_albums sa on sa.id_albums = a.id_albums 
join gs g on g.id_singers = sa.id_singers
group by a.title_albums) ab
where m > 1

select *
from tracks t 

select name_track 
from tracks t 
full join mix_track mt on mt.id_tracks = t. id_tracks 
where mt.id_mix is null

select * from
(select name_singers, rank() over(order by t.duration) as td
from singers s 
join singers_albums sa on sa.id_singers =s.id_singers 
join tracks t   on t.id_albums  = sa.id_albums) a
where a.td = 1

select * from
(
select *, rank()  over (order by cou) as  ra
from(
select a.title_albums, count(t.id_tracks) as cou
from tracks t 
join albums a on a.id_albums = t.id_albums
group by a.title_albums
)  tab1) tab2
where tab2.ra = 1



