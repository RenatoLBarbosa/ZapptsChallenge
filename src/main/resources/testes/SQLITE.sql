BEGIN TRANSACTION;
CREATE TABLE list (
	idlist	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	namelist	TEXT NOT NULL,
	idplayer	INTEGER NOT NULL,
	qtdcard	INTEGER NOT NULL,
	idcard	INTEGER NOT NULL,
	pricelist	REAL,
	FOREIGN KEY("idcard") REFERENCES "card"("idcard"),
	FOREIGN KEY("idplayer") REFERENCES "player"("idplayer")
);
CREATE TABLE card (
	idcard	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	namecard	TEXT NOT NULL,
	edition	TEXT NOT NULL,
	idlanguage	INTEGER NOT NULL,
	foil	TEXT NOT NULL,
	price	REAL NOT NULL,
	FOREIGN KEY("idlanguage") REFERENCES "languages"("idlanguage")
);
CREATE TABLE languages (
	idlanguage	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	language	TEXT NOT NULL
);
CREATE TABLE player (
	idplayer	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	nameplayer	TEXT NOT NULL
);
INSERT INTO list ("idlist","namelist","idplayer","qtdcard","idcard","pricelist") VALUES (1,'list1',2,2,1,12.0);
INSERT INTO list ("idlist","namelist","idplayer","qtdcard","idcard","pricelist") VALUES (2,'list2',1,1,1,2.0);
INSERT INTO card ("idcard","namecard","edition","idlanguage","foil","price") VALUES (1,'card1','edt1',2,'true',123.12);
INSERT INTO card ("idcard","namecard","edition","idlanguage","foil","price") VALUES (2,'card2','edt2',2,'false','123,32');
INSERT INTO languages ("idlanguage","language") VALUES (1,'Ingles');
INSERT INTO languages ("idlanguage","language") VALUES (2,'Portugues');
INSERT INTO languages ("idlanguage","language") VALUES (3,'Japones');
INSERT INTO player ("idplayer","nameplayer") VALUES (1,'p1');
INSERT INTO player ("idplayer","nameplayer") VALUES (2,'p2');
COMMIT;
