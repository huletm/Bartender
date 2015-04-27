DROP TABLE IF EXISTS "DESCRIPTION";
CREATE TABLE "DESCRIPTION"("NAMED" char(20) not null references "DRINK","LANGUAGE" char(20) not null, "TEXT" char(700) not null, primary key (NAMED,LANGUAGE));
INSERT INTO "DESCRIPTION" VALUES('Coca','Français','Description de Coca en Français');
INSERT INTO "DESCRIPTION" VALUES('Coca','Anglais','Description of Coca cola in English');
INSERT INTO "DESCRIPTION" VALUES('Fanta','Français','Description de Fanta en Français');
INSERT INTO "DESCRIPTION" VALUES('Fanta','Anglais','Descriptionvof Fanta in English');
INSERT INTO "DESCRIPTION" VALUES('Jupiler-25cl','Français','Description de Jupiler en Français');
INSERT INTO "DESCRIPTION" VALUES('Jupiler-25cl','Anglais','Description of Jupiler in English');
DROP TABLE IF EXISTS "DRINK";
CREATE TABLE "DRINK"(NAMED CHAR(20) NOT NULL PRIMARY KEY, "TYPED" CHAR(20) NOT NULL, "PICTURE" INTEGER);
INSERT INTO "DRINK" VALUES('Coca','soft','coca');
INSERT INTO "DRINK" VALUES('Fanta','soft','fanta');
INSERT INTO "DRINK" VALUES('Jupiler-25cl','bière',NULL);
DROP TABLE IF EXISTS "INVENTARY";
CREATE TABLE "INVENTARY"("NAMED" char(20) not null primary key, "PRICE" double not null, "MAXQ" integer not null, "RESTQ" integer not null, "TRESHOLD" integer not null default 15);
INSERT INTO "INVENTARY" VALUES('Coca',1,300,200,50);
INSERT INTO "INVENTARY" VALUES('Fanta',1,300,110,50);
INSERT INTO "INVENTARY" VALUES('Jupiler-25cl',1.5,500,50,100);
INSERT INTO "INVENTARY" VALUES('Rochefort 10',3,400,60,70);
DROP TABLE IF EXISTS "MUSIC";
CREATE TABLE "MUSIC"("ARTIST" char(20) not null, "TITLE" char(40) not null, "TIME" double not null ,"CATEGORY" char(30) not null, primary key (ARTIST, TITLE));
INSERT INTO "MUSIC" VALUES('Nirvana','Lithium',3.5,'Rock');
INSERT INTO "MUSIC" VALUES('Evanescence','Lithium',2.3,'Hard Rock');
INSERT INTO "MUSIC" VALUES('Michael Jackson','Beat it',3.5,'Pop');
INSERT INTO "MUSIC" VALUES('Michael Jackson','Thriller',3,'Pop');
DROP TABLE IF EXISTS "ORDER";
CREATE TABLE "ORDER"("ID" integer not null primary key autoincrement, "NAMED" char(20) not null, "TABLE" integer not null, "DRINKQ" integer not null default 1,"LOGIN" char(20) not null references "PERSON");
INSERT INTO "ORDER" VALUES(25,'Coca',1,2,'Jean');
INSERT INTO "ORDER" VALUES(26,'Coca',1,2,'Simon');
INSERT INTO "ORDER" VALUES(27,'Fanta',2,4,'Simon');
DROP TABLE IF EXISTS "PERSON";
CREATE TABLE "PERSON" ("LOGIN" char(20) PRIMARY KEY  NOT NULL ,"PASSWORD" char(30) NOT NULL ,"TYPEP" char(1) NOT NULL  DEFAULT ('Client') ,"TOTSELL" double);
INSERT INTO "PERSON" VALUES('Jean','00000','Waiter',20);
INSERT INTO "PERSON" VALUES('Paul','00000','Boss',NULL);
INSERT INTO "PERSON" VALUES('Simon','11111','Waiter',20);
INSERT INTO "PERSON" VALUES('Jacques','22222','Client',NULL);
DROP TABLE IF EXISTS "PLAYLIST";
CREATE TABLE "PLAYLIST"("NUMBER" integer not null primary key, "ARTIST" char(20) not null, "TITLE" char(40) not null, "TABLE" integer not null);
INSERT INTO "PLAYLIST" VALUES(1,'Michael Jackson','Thriller',1);
INSERT INTO "PLAYLIST" VALUES(2,'Nirvana','Lithium',2);
