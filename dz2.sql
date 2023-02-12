

create table if not exists genres (
id_genres serial primary key,
title_genres varchar(60) not null
);



create table if not exists public.singers (
id_singers serial primary key,
name_singers varchar(60) not null,
nickname varchar(60)
);

create table if not exists gs (
id_genres int2 references genres (id_genres),
id_singers int2 references singers (id_singers),
primary key (id_genres, id_singers)
);

create table if not exists albums (
id_albums serial primary key,
title_albums varchar(60) not null,
year_create date not null check(year_create<= current_date)
);

create table if not exists singers_albums (
id_singers int2 references singers(id_singers),
id_albums int2 references albums(id_albums),
primary key(id_singers, id_albums)
);

create table if not exists tracks (
id_tracks serial primary key,
duration varchar(60) not null,
name_track varchar(60) not null,
id_albums int2 references albums(id_albums)
);

create table if not exists mix (
id_mix serial primary key,
title_mix varchar(60) not null,
year_mix date not null check (year_mix <= current_date)
);

create table if not exists mix_track (
id_mix int2 references mix(id_mix),
id_tracks int2 references tracks(id_tracks),
primary key (id_mix, id_tracks)
);

