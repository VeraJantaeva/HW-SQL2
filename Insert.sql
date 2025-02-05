 
-- Заполняем таблицу с жанрами

INSERT INTO STYLE
	VALUES (1, 'Rock');

INSERT INTO STYLE
	VALUES (2, 'Retro');

INSERT INTO STYLE
	VALUES (3, 'Metall');

-- Заполняем таблицу с исполнителями
INSERT INTO singer
	VALUES (1, 'Red Hot Chili Peppers');

INSERT INTO singer
	VALUES (2, 'Modern Talking');

INSERT INTO singer
	VALUES (3, 'Abba');

INSERT INTO singer
	VALUES (4, 'RadioTapok');


-- Заполняем таблицу с треками
INSERT INTO track ( id_album, time, name_track)
	VALUES (1, 3.52, 'Brother Loui');

INSERT INTO track ( id_album, time, name_track)
	VALUES (2, 4, 'Happy Ney Year');

INSERT INTO track ( id_album, time, name_track)
	VALUES (3, 2, 'Hold On');

INSERT INTO track ( id_album, time, name_track)
	VALUES (1, 4.25, 'Pretty young girl');

INSERT INTO track ( id_album, time, name_track)
	VALUES (2, 3.27, 'Valerie');

INSERT INTO track ( id_album, time, name_track)
	VALUES (3, 4.12, 'Big in Japan');


-- Заполняем таблицу с альбомами
INSERT INTO album
	VALUES (1, 'Back for good', 15.10.1989);
INSERT INTO album
	VALUES (2, 'Feel it all', 25.03.2012);
INSERT INTO album
	VALUES (3, 'screem', 10.12.1999);


-- Заполняем таблицу со сборниками
INSERT INTO collection
	VALUES (1, 'happy new year', 19.10.2015);
INSERT INTO collection
	VALUES (3, 'halloween', 5.09.2019);
INSERT INTO collection
	VALUES (2, 'X-mas', 15.10.2000);


--Формируем связь между жанром и исполнителем
INSERT INTO style_singer (id_style, id_singer)
	VALUES (1,2)
	
INSERT INTO style_singer (id_style, id_singer)
	VALUES (2,3)
	
INSERT INTO style_singer (id_style, id_singer)
	VALUES (3,1)
	
-- Формируем связь между альбомами и исполнителями
INSERT INTO album_singer (id_album, id_singer)
	VALUES (2,3)
INSERT INTO album_singer (id_album, id_singer)
	VALUES (1,3)
INSERT INTO album_singer (id_album, id_singer)
	VALUES (3,2)

--Формируем связь песни и сборника
INSERT INTO collection_track (id_collection, id_track)
	VALUES (3,2)
INSERT INTO collection_track (id_collection, id_track)
	VALUES (3,1)
INSERT INTO collection_track (id_collection, id_track)
	VALUES (1,3)
