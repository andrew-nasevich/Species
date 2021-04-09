CREATE DATABASE "Species";

CREATE TABLE "Accounts"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Name" NVARCHAR(100) NOT NULL,
	"Surname" NVARCHAR(100) NOT NULL,
	"Email" NVARCHAR(100) UNIQUE NOT NULL,
	"Hash" NVARCHAR(100) NOT NULL
);

CREATE TABLE "SpeciesTypes"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Type" NVARCHAR(100) UNIQUE NOT NULL 
)

CREATE  TABLE "Species"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Class" NVARCHAR(100) NOT NULL,
	"RussianName" NVARCHAR(100) NOT NULL,
	"LatinName" NVARCHAR(100),
	"BelarusianName" NVARCHAR(100),
	"Category" INT NOT NULL,
	"SpeciesTypeId" INT FOREIGN KEY REFERENCES "SpeciesTypes"("Id") NOT NULL
)

CREATE TABLE "Observations"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Latitude" FLOAT NOT NULL,
	"Longitude" FLOAT NOT NULL,
	"Date" DATE NOT NULL,
	"Description" NVARCHAR(1000) NOT NULL,
	"SpeciesId" INT FOREIGN KEY REFERENCES "Species"("Id") NOT NULL,
	"AccountId" INT FOREIGN KEY REFERENCES "Accounts"("Id") NOT NULL
)