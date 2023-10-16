# part one
CREATE TABLE Hero (
	Hero_id INT AUTO_INCREMENT PRIMARY KEY,
    Firstname VARCHAR(50) NOT NULL,
    Lastname VARCHAR(50) NOT NULL,
    Alias VARCHAR(50) NOT NULL,
    Ability VARCHAR(70), 
    TeamID INT NOT NULL
    );
 
CREATE TABLE Team (
	TeamID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Objective VARCHAR(200) NOT NULL
    );

ALTER TABLE Hero
ADD CONSTRAINT TeamID 
FOREIGN KEY (TeamID)
REFERENCES Team(TeamID);

# part two
# INSERT
use superhero;

INSERT INTO Team (TeamID, Name, Objective)
VALUES
    (1, 'JLA', 'Protect the world'),
    (2, 'JSA', 'Defeat the Nazis'),
    (3, 'Birds of Prey', 'Fight crime (without men)'),
    (4, 'Task Force X', 'Follow Wallers orders or die'),
    (5, 'Teen Titans', 'Teach young superheroes to be their best');

INSERT into Hero
	(Firstname, Lastname, Alias, Ability, TeamID)
values
	('Bruce', 'Wayne', 'Batman', 'Martial Arts', 1),
    ('Clark', 'Kent', 'Superman', 'Flight', 1),
    ('Jay', 'Garrick', 'The Flash', 'Super-Speed', 2),
    ('Alan', 'Scott', 'Green Lantern', 'Ring Creation', 2),
    ('Helena', 'Bertenelli', 'The Huntress', 'Crossbow Archery', 3),
    ('Harleen', 'Quinzel', 'Harley Quinn', 'Hammer-Fighting', 3),
    ('Floyd', 'Lawton', 'Deadshot', 'Marksmanship', 4),
    ('Cecil', 'Adams', 'Count Vertigo', 'Induce dizziness', 4),
    ('Damian', 'Wayne', 'Robin', 'Swordsmanship', 5),
    ('Dick', 'Grayson', 'Nightwing', 'Acrobatics', 5);

SELECT * FROM Team;