
USE BUDT703_Project_0506_02
ALTER TABLE [VanMunchers.Review]
DROP CONSTRAINT IF EXISTS fk_Review_webId
DROP TABLE IF EXISTS [VanMunchers.Amenities]
DROP TABLE IF EXISTS [VanMunchers.Websource]
DROP TABLE IF EXISTS [VanMunchers.Bookmark]
DROP TABLE IF EXISTS [VanMunchers.Review]
DROP TABLE IF EXISTS [VanMunchers.User]
DROP TABLE IF EXISTS [VanMunchers.RestaurantPhone]
DROP TABLE IF EXISTS [VanMunchers.Restaurant]
CREATE TABLE [VanMunchers.Restaurant] (
rstId VARCHAR (6) NOT NULL,
rstName VARCHAR (40),
rstAddress VARCHAR(40),
rstCity VARCHAR (250),
rstState VARCHAR (2),
rstPostalCode CHAR (5),
rstWeb VARCHAR(500),
CONSTRAINT pk_Restaurant_rstId PRIMARY KEY (rstId))
CREATE TABLE [VanMunchers.RestaurantPhone] (
rstId VARCHAR (6) NOT NULL,
rstPhone CHAR (14) NOT NULL,
CONSTRAINT pk_RestaurantPhone_rstPhone PRIMARY KEY (rstPhone),
CONSTRAINT fk_RestaurantPhone_rstId FOREIGN KEY (rstId)
 REFERENCES [VanMunchers.Restaurant] (rstId)
 ON DELETE CASCADE ON UPDATE CASCADE)
CREATE TABLE [VanMunchers.User] (
usrId VARCHAR (6) NOT NULL,
usrName VARCHAR (40),
usrCity VARCHAR (40),
usrState VARCHAR (2),
usrStartDate DATE,
CONSTRAINT pk_User_usrId PRIMARY KEY (usrId))
CREATE TABLE [VanMunchers.Websource] (
webId VARCHAR (6) NOT NULL,
webSource VARCHAR (20),
CONSTRAINT pk_Websource_webId PRIMARY KEY (webId))
CREATE TABLE [VanMunchers.Review] (
revId VARCHAR (6) NOT NULL,
revDate DATE,
revStars CHAR (1),
revText VARCHAR (8000),
rstId VARCHAR (6) NOT NULL,
usrId VARCHAR (6),
webId VARCHAR (6),
CONSTRAINT pk_Review_revId PRIMARY KEY (revId),
CONSTRAINT fk_Review_rstId FOREIGN KEY (rstId)
 REFERENCES [VanMunchers.Restaurant] (rstId)
 ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_Review_usrId FOREIGN KEY (usrId)
Adam Lee
why?
 REFERENCES [VanMunchers.User] (usrId)
 ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT fk_Review_webId FOREIGN KEY (webId)
 REFERENCES [VanMunchers.Websource] (webId)
 ON DELETE SET NULL ON UPDATE CASCADE)
CREATE TABLE [VanMunchers.Bookmark] (
rstId VARCHAR (6) NOT NULL,
usrId VARCHAR (6) NOT NULL,
bookDate DATE,
CONSTRAINT pk_Bookmark_rstId_usrId PRIMARY KEY (rstId,usrId),
CONSTRAINT fk_Bookmark_rstId FOREIGN KEY (rstId)
 REFERENCES [VanMunchers.Restaurant] (rstId)
 ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT fk_Bookmark_usrId FOREIGN KEY (usrId)
 REFERENCES [VanMunchers.User] (usrId)
 ON DELETE CASCADE ON UPDATE CASCADE)
CREATE TABLE [VanMunchers.Amenities] (
ameId VARCHAR (6) NOT NULL,
    ameDelivery INTEGER,
ameTakeOut INTEGER,
ameOutDoorSeat INTEGER,
    ameWifi INTEGER,
ameParking INTEGER,
rstId VARCHAR (6) NOT NULL, 
CONSTRAINT pk_Amenities_ameId PRIMARY KEY (ameId),
CONSTRAINT fk_Amenities_rstId FOREIGN KEY (rstId)
 REFERENCES [VanMunchers.Restaurant] (rstId)
 ON DELETE CASCADE ON UPDATE CASCADE)