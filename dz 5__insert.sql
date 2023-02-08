insert into genres (title_genres)
values 
('Rock'),
('Pop'),
('Techno'),
('Classica'),
('Rap'),
('Vocal'),
('Punk music'),
('Heavy metal');


insert into singers (name_singers)
values 
('Linkin Park'),
('Limp Bizkit'),
('Metalica'),
('Queen'),
('Nirvana'),
('Nazareth'),
('Gorillaz'),
('Green Day');


insert into gs (id_genres, id_singers)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)



insert into albums  (title_albums, year_create )
values 
('The Ultimate Top 40 Collection', 2004),
('Italo Maxi Hits', 2008),
(' Discipline',2018),
('Night Rider 5',2007),
('Chaos and Colour',1999),
('Greatest Hits',2003),
('Winter Pop Sensation',2022),
('Ultimate Sixties: The Classics', 1995);




insert into singers_albums  (id_singers, id_albums)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)

insert into singers_albums  (id_singers, id_albums)
values(1, 18),
(3, 18);
select * from singers_albums sa 



insert into  tracks (name_track, duration, id_albums)
values
('We Found Love', 2.3, 1),
('Pure Love', 3.1, 2),
('What Else Is There?',2.4, 3),
('Despacito',2.5, 4),
('Say It Right',2.2, 5),
('Umbrella',2.1, 6),
('Smack That',2.4, 7),
('Diamonds', 1.5, 8),
('Promiscuous',3.1, 1),
( 'I am  Alone', 3.3, 2),
('Sad Emotional Violin Music',2.5, 3),
('Killa',3.4, 3),
('Love The Way You Lie',2.2, 4),
('Dream Of You',1.5, 5),
('Ring My Bells',2.1, 4),
('Ultimate Sixties: The ClassicsApologize', 3.5, 5);



insert into  mix (title_mix, year_mix)
values
('Sweetest Pie', 2000),
('Belly Dancer', 1999),
('Everything But You', 2003),
('Ordinary Life', 2016),
('NirvanaIn Your Arms (For An Angel)', 2005),
('How Long', 2021),
('redruM', 2019),
('Discoteca', 2007)



insert into mix_track 
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8)
