CREATE DATABASE HugoLR;

CREATE TABLE Actor (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(200) NOT NULL
);

CREATE TABLE Serie (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(200) NOT NULL
);

CREATE TABLE Director (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(200) NOT NULL
);

CREATE TABLE Episode (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(200) NOT NULL
  SerieId INT,
  DirectorId INT,
  FOREIGN KEY (SerieId) REFERENCES Serie(Id),
  FOREIGN KEY	(DirectorId) REFERENCES Director(Id)
);

CREATE TABLE Transmition (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Datetransmission DATE NOT NULL,
  EpisodeId INT,
  Frequency INT,
  FOREIGN KEY (EpisodeId) REFERENCES Episode(Id)
);

CREATE TABLE Characters (
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  SerieId INT,
  ActorId INT,
  FOREIGN KEY (SerieId) REFERENCES Serie(Id),
  FOREIGN KEY	(ActorId) REFERENCES Actor(Id)
);
