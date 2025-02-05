select name_album, date_creation from album
	where date_creation >= '20190101' and date_creation <= '20200101';

--Название и продолжительность самого длительного трека.
select name_track, time from track
	order by time desc
	limit 1;

--Название треков, продолжительность которых не менее 3,5 минут.
select name_track, time from Tracks
	where time >= '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name_collection, date_creation from Сollections
	where date_creation >= '20180101' and date_creation <= '20201231';

-- Исполнители, чьё имя состоит из одного слова.
select id_singer, name_singer from Artists
	where name_singer not like '%% %%';

--Название треков, которые содержат слово «мой» или «my».

select name_track from track
	where name_track like '%%my%%';
	
select name_track from track
	where name_track like '%%My%%';
	
select name_track from track
	where name_track like '%%мой%%';