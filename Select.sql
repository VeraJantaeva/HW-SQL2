-- ЗАДАНИЕ 2

--1. Название и продолжительность самого длительного трека.
select name_track, time from track
	order by time desc
	limit 1;

--2. Название треков, продолжительность которых не менее 3,5 минут.
select name_track, time from track
	where time >= '210';

-- 3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name_collection, date_creation from collection
	where date_creation >= '20180101' and date_creation <= '20201231';

-- 4. Исполнители, чьё имя состоит из одного слова.
select id_singer, name_singer from singer
	where name_singer not like '%% %%';

--5. Название треков, которые содержат слово «мой» или «my».

select name_track from track
	where name_track ilike '%%my %%'
	or name_track ilike '%% my%%'
	or name_track ilike '%% my %%'
	OR name_track ilike '%%my%%'
	OR name_track ilike '%%мой %%'
	or name_track ilike '%% мой%%'
	OR name_track ilike '%% мой %%'
	OR name_track ilike '%%мой%%';
	

-- ЗАДАНИЕ 3

--Количество исполнителей в каждом жанре.
SELECT id_style, COUNT(*) FROM style_singer
	GROUP BY id_style
	ORDER BY COUNT(*);

	
--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT name_album, COUNT(t.name_track) FROM album a 
	JOIN track t ON t.id_album = a.id_album
	WHERE a.date_create >= '20190101' and a.date_create <= '20201231'
	GROUP BY a.name_album;

--Средняя продолжительность треков по каждому альбому.
SELECT id_album, AVG(track.time) FROM track
	GROUP BY id_album
	ORDER BY AVG(track.time);

--Все исполнители, которые не выпустили альбомы в 2020 году.

	
SELECT DISTINCT name_singer FROM singer s
LEFT JOIN album_singer alsi ON alsi.id_singer = s.id_singer
LEFT JOIN album a ON alsi.id_album = a.id_album
WHERE a.date_create >= '20201231' or a.date_create <= '20200101'
ORDER BY s.name_singer;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT name_collection FROM collection c
	LEFT JOIN collection_track ct ON c.id_collection = ct.id_collection 
	LEFT JOIN track t ON ct.id_track = t.id_track 
	LEFT JOIN album a ON t.id_album = a.id_album
	LEFT JOIN album_singer alsi ON alsi.id_album = a.id_album 
	LEFT JOIN singer s ON alsi.id_singer = s.id_singer 
	WHERE name_singer LIKE '%Abba%'
	ORDER BY name_collection;