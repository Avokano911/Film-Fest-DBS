/* Tables for Database System's Final Assignment */

DROP TABLE IF EXISTS Person;
CREATE TABLE Person(
	PersonID char(8) NOT NULL,
	LastName varchar(25) NOT NULL,
	FirstName varchar(25) NOT NULL,
	Phone varchar(15),
	PRIMARY KEY (PersonID)
);
DROP TABLE IF EXISTS Actor;
CREATE TABLE Actor(
	PersonID char(8) NOT NULL,
	Agency varchar(25) ,
	PRIMARY KEY (PersonID),
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE
);
DROP TABLE IF EXISTS Worker;
CREATE TABLE Worker(
	JobTitle varchar(25) NOT NULL,
	PersonID char(8) NOT NULL,
	PRIMARY KEY (PersonID),
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE
);
DROP TABLE IF EXISTS Film;
CREATE TABLE Film(
	FilmID char(8) NOT NULL,
	YearOfRelease INT(4),
	Genre varchar(25),
	F_Name varchar(25) NOT NULL,
	PRIMARY KEY (FilmID)
);
DROP TABLE IF EXISTS Award;
CREATE TABLE Award(
	AwardID char(8) NOT NULL,
	NameofAward varchar(25) NOT NULL,
	Details varchar(125),
	PRIMARY KEY (AwardID)
);
DROP TABLE IF EXISTS Festival;
CREATE TABLE Festival(
	Fest_ID char(8) NOT NULL,
	FestName varchar(25) NOT NULL,
       	StartDate DATE NOT NULL,
        EndDate DATE,
	Location_Country varchar(25) NOT NULL,
	Location_City varchar(25) NOT NULL,
	Location_Venue varchar(25) NOT NULL,
	PRIMARY KEY (Fest_ID)
);

/* This is (IS_ON) relationship */
DROP TABLE IF EXISTS Participates;
CREATE TABLE Participates(
	PersonID char(8) NOT NULL,
	FilmID char(8) NOT NULL,
	RoleType varchar(25) NOT NULL,
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE,
	FOREIGN KEY (FilmID) REFERENCES Film(FilmID) ON DELETE CASCADE,
	PRIMARY KEY (PersonID, FilmID, RoleType)
);

/* This is (RECEIVED) relationship */
DROP TABLE IF EXISTS Received;
CREATE TABLE Received(
	PersonID char(8) NOT NULL,
        FilmID char(8) NOT NULL,
	AwardID char(8) NOT NULL,
	AYear INT(4) NOT NULL,
	Fest_ID char(8) NOT NULL,
	FOREIGN KEY (PersonID) REFERENCES Person(PersonID) ON DELETE CASCADE,
	FOREIGN KEY (FilmID) REFERENCES Film(FilmID) ON DELETE CASCADE,
	FOREIGN KEY (AwardID) REFERENCES Award(AwardID) ON DELETE CASCADE,
	FOREIGN KEY (Fest_ID) REFERENCES Festival(Fest_ID) ON DELETE CASCADE,
	PRIMARY KEY (PersonID, FilmID, AwardID, Fest_ID)
);

/* This is (AwardIn) relationship */
/* Do NOT NEED THIS */



