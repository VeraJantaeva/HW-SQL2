 
-- создаем таблицу с жанрами
CREATE table if not exists style (
	id_style serial PRIMARY KEY,
	name_style TEXT NOT null
	);

-- создаем таблицу с исполнителями
CREATE TABLE IF NOT EXISTS singer (
	id_singer serial PRIMARY KEY,
	name_singer TEXT NOT null,

	);

-- создаем таблицу с треками
CREATE TABLE IF NOT EXISTS track (
	id_track serial PRIMARY KEY,
	id_album integer references album (id_album)
	name_album text NOT NULL,
	time integer not null,
	name_track text not null,
	
	);

-- создаем таблицу с альбомами
CREATE TABLE IF NOT EXISTS album (
	id_album serial PRIMARY KEY,
	name_album TEXT NOT NULL,
	date_create DATE NOT NULL,
	
	);

-- создаем таблицу со сборниками
CREATE TABLE IF NOT EXISTS collection (
	id_collection serial PRIMARY KEY,
	name_collection text not null,
	date_creation date not null,
	
	);


-- связь между жанром и исполнителем
CREATE TABLE IF NOT EXISTS style_singer (
	id serial PRIMARY KEY,
	id_style integer NOT NULL REFERENCES style (id_style),
	id_singer integer not null references singer (id_singer));


-- связь между альбомами и исполнителями
CREATE TABLE IF NOT EXISTS album_singer (
	id serial PRIMARY KEY,
	id_album integer NOT NULL REFERENCES singer (id_album),
	id_singer integer NOT null references singer(id_singer));

--связь песни и сборника
CREATE TABLE IF NOT EXISTS collection_track (
	id serial PRIMARY KEY,
	id_collection integer NOT null references collection(id_collection),
	id_track integer not null references track(id_track));
