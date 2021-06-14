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
	"Name" NVARCHAR(100) UNIQUE NOT NULL,
	"Description" NVARCHAR(MAX) NOT NULL
)

CREATE TABLE "Classes"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Name" NVARCHAR(100) NOT NULL,
	"LatinName" NVARCHAR(100) NOT NULL,
	"Description" NVARCHAR(MAX) NOT NULL,
	"SpeciesTypeId" INT FOREIGN KEY REFERENCES "SpeciesTypes"("Id") ON DELETE CASCADE  NOT NULL
)

CREATE TABLE "Orders"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Name" NVARCHAR(100) NOT NULL,
	"LatinName" NVARCHAR(100) NOT NULL,
	"Description" NVARCHAR(MAX) NOT NULL,
	"ClassId" INT FOREIGN KEY REFERENCES "Classes"("Id") ON DELETE CASCADE  NOT NULL
)

CREATE TABLE "Species"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"RussianName" NVARCHAR(100) NOT NULL,
	"LatinName" NVARCHAR(100),
	"BelarusianName" NVARCHAR(100),
	"Category" INT NOT NULL,
	"Description" NVARCHAR(MAX) NOT NULL,
	"ImageFileName" NVARCHAR(100) NOT NULL,
	"OrderId" INT FOREIGN KEY REFERENCES "Orders"("Id") ON DELETE CASCADE  NOT NULL
)

CREATE TABLE "Observations"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Latitude" FLOAT NOT NULL,
	"Longitude" FLOAT NOT NULL,
	"Date" DATE NOT NULL,
	"Description" NVARCHAR(1000) NOT NULL,
	"SpeciesId" INT FOREIGN KEY  REFERENCES "Species"("Id") ON DELETE CASCADE  NOT NULL ,
	"AccountId" INT FOREIGN KEY REFERENCES "Accounts"("Id") ON DELETE CASCADE  NOT NULL
)

CREATE TABLE "Roles"
(
	"Id" INT IDENTITY PRIMARY KEY NOT NULL,
	"Name" NVARCHAR(100) NOT NULL,
	"ViewName" NVARCHAR(100) NOT NULL,
)

CREATE TABLE "AccountRoles"
(
	"AccountId" INT FOREIGN KEY REFERENCES  "Accounts"("Id") ON DELETE CASCADE  NOT NULL,
	"RoleId" INT FOREIGN KEY REFERENCES "Roles"("Id")  NOT NULL,
	CONSTRAINT m2m_constraint PRIMARY KEY ("AccountId", "RoleId"),
)