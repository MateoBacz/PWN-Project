CREATE DATABASE MotoGP;
USE MotoGP;
drop table riders;
CREATE TABLE Riders(

ID_R		INTEGER UNIQUE NOT NULL,
Name_R		TEXT,
Surname_R	TEXT,
Country_R	CHARACTER(3),
Bike_R		TEXT,
Rank_R		INTEGER UNIQUE NOT NULL

);
DESCRIBE Riders;
TRUNCATE Riders;
INSERT INTO Riders VALUES (1, 'Valentino', 'Rossi', 'ITA', 'Yamaha', '3'); #Yamaha Factory Racing
INSERT INTO Riders VALUES (2, 'Marc', 'Marquez', 'ESP', 'Honda', '1'); #Respol Honda Team
INSERT INTO Riders VALUES (3, 'Andrea', 'Dovizioso', 'ITA', 'Ducati', '2'); #Ducati Team
INSERT INTO Riders VALUES (4, 'Alex', 'Rins', 'ESP', 'Suzuki', '5'); #Team Suzuki MotoGP
INSERT INTO Riders VALUES (5, 'Maverick', 'Vinales', 'ESP', 'Yamaha', '4'); #Yamaha Factory Racing
INSERT INTO Riders VALUES (6, 'Johann', 'Zarco', 'FRA', 'KTM', '6'); #Red Bull KTM Factory Racing
INSERT INTO Riders VALUES (7, 'Cal', 'Crutchlow', 'GBA', 'Honda', '7'); #Team LCR
INSERT INTO Riders VALUES (8, 'Danilo', 'Petrucci', 'ITA', 'Ducati', '8'); #Ducati Team
INSERT INTO Riders VALUES (9, 'Jorge', 'Lorenzo', 'ESP', 'Honda', '9'); #Repsol Honda Team
INSERT INTO Riders VALUES (10, 'Andrea', 'Iannone', 'ITA', 'Suzuki', '10'); #Gresini Racing

SELECT * FROM Riders;

CREATE TABLE Teams(

ID_T		INTEGER UNIQUE NOT NULL,
Name_T		TEXT,
Country_T	TEXT,
Rank_T		INTEGER UNIQUE NOT NULL

);
DESCRIBE Teams;
TRUNCATE Teams;
INSERT INTO Teams VALUES (1, 'Respol Honda Team', 'JPN', '1');
INSERT INTO Teams VALUES (2, 'Ducati Team', 'ITA', '2');
INSERT INTO Teams VALUES (3, 'Yamaha Factory Racing', 'JPN', '3');
INSERT INTO Teams VALUES (4, 'Team Suzuki MotoGP', 'JPN', '4');
INSERT INTO Teams VALUES (5, 'Team LCR', 'MCO', '7');
INSERT INTO Teams VALUES (6, 'Red Bull KTM Factory Racing', 'AUT', '9');

SELECT * FROM Teams;

CREATE TABLE Competitions(

ID_C		INTEGER UNIQUE NOT NULL,
Name_C		TEXT,
Country_C	CHARACTER(3),
Distance_C	INTEGER

); 
DESCRIBE Competitions;
TRUNCATE Competitions;
INSERT INTO Competitions VALUES (1, 'Sachsenring', 'GER', '3700');
INSERT INTO Competitions VALUES (2, 'Losail International Circuit', 'QAT', '5380');
INSERT INTO Competitions VALUES (3, 'Mugello', 'ITA', '5245');
INSERT INTO Competitions VALUES (4, 'Circuit of the Americas', 'USA', '5500');
INSERT INTO Competitions VALUES (5, 'Silverstone Circuit', 'GBA', '5891');


DROP TABLE RidersTeamsRelation;
CREATE TABLE RidersTeamsRelation(
RidersID INT NOT NULL,
TeamsID INT NOT NULL,
FOREIGN KEY (RidersID) REFERENCES Riders(ID_R),
FOREIGN KEY (TeamsID) REFERENCES Teams(ID_T)
);
TRUNCATE RidersTeamsRelation;
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(1,3);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(2,1);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(3,2);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(4,4);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(5,3);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(6,6);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(7,5);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(8,2);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(9,1);
INSERT INTO RidersTeamsRelation (RidersID, TeamsID) VALUES(10,4);

Drop TABLE RidersCompetitionsRelation;
CREATE TABLE RidersCompetitionsRelation(
RidersID INT NOT NULL,
CompetitionsID INT NOT NULL,
FOREIGN KEY (RidersID) REFERENCES Riders(ID_R),
FOREIGN KEY (CompetitionsID) REFERENCES Competitions(ID_C)
);
TRUNCATE RidersCompetitionsRelation;
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(1,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(1,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(1,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(1,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(2,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(2,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(2,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(2,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(3,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(3,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(3,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(3,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(4,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(4,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(4,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(4,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(5,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(5,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(5,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(5,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(6,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(6,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(6,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(6,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(7,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(7,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(7,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(7,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(8,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(8,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(8,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(8,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(9,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(9,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(9,4);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(9,5);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(10,1);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(10,2);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(10,3);
INSERT INTO RidersCompetitionsRelation (RidersID, CompetitionsID) VALUES(10,4);

#Checking team squad
SELECT t.Name_T, r.Name_R, r.Surname_R FROM Riders r JOIN RidersTeamsRelation rr ON r.ID_R = rr.RidersID JOIN Teams 
t on t.ID_T = rr.TeamsID WHERE t.Name_T = 'Respol Honda Team';

SELECT concat(r.Name_R, ' ', r.Surname_R) as 'Yamaha Factory Racing Squad' FROM Riders r JOIN RidersTeamsRelation rr ON r.ID_R = rr.RidersID JOIN Teams 
t on t.ID_T = rr.TeamsID WHERE t.Name_T = 'Yamaha Factory Racing';

#Checking list of rider on race
SELECT concat(r.Name_R, ' ', r.Surname_R) as 'Riders list on Circuit of the Americas race' FROM Riders r JOIN RidersCompetitionsRelation rcr ON r.ID_R = rcr.RidersID JOIN 
Competitions c on c.ID_C = rcr.CompetitionsID WHERE c.Name_C = 'Circuit of the Americas';

SELECT concat(r.Name_R, ' ', r.Surname_R) as 'Riders list on Mugello race' FROM Riders r JOIN RidersCompetitionsRelation rcr ON r.ID_R = rcr.RidersID JOIN 
Competitions c on c.ID_C = rcr.CompetitionsID WHERE c.Name_C = 'Mugello';


#Number of Riders/Race
SELECT c.Name_C as 'Name of Race', count(rcr.RidersID) as 'Number of Riders'
FROM Competitions c Join 
	RidersCompetitionsRelation rcr on rcr.CompetitionsID = c.ID_C
    GROUP BY c.ID_C;
    
#All Riders from Italy
SELECT * FROM Riders WHERE Country_R = 'ITA';
SELECT count(Country_R) as Number_of_Riders_from_Italy from Riders where Country_R = 'ITA'; 

#Ranking of Riders and Teams
Select * FROM Riders ORDER BY Rank_R;
Select * FROM Teams ORDER BY Rank_T;