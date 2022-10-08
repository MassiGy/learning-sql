CREATE TABLE IF NOT EXISTS POST (
	Id INT PRIMARY KEY  AUTO_INCREMENT,
	Title VARCHAR(255),
	Content VARCHAR(255),
	Author INT NOT NULL,
	FOREIGN KEY (Author) REFERENCES USER(Id)
);





INSERT INTO POST (`Title`,`Content`, `Author`) VALUES ("Making Money Online"," elit. Consequatur nam,", 1);
INSERT INTO POST (`Title`,`Content`, `Author`) VALUES ("2022: How Is Making Money Online"," elit. Consequatur nam,", 1);
INSERT INTO POST (`Title`,`Content`,`Author`) VALUES ("Lebron James Is the new Legand", "elit. Consequatur nam,", 2);
INSERT INTO POST (`Title`,`Content`,`Author`) VALUES ("Summer 2022: Is Really Lebron James Is the new Legand", "elit. Consequatur nam,", 2);
INSERT INTO POST (`Title`,`Content`,`Author`) VALUES ("Standoff is the mobile CSGO","elit. Consequatur nam,", 3);
INSERT INTO POST (`Title`,`Content`,`Author`) VALUES ("Critical Strike vs Standoff which is is the mobile CSGO","elit. Consequatur nam,", 3);

