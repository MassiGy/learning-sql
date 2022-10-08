CREATE TABLE IF NOT EXISTS CONTACT_INFO(
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Phone VARCHAR(64),
    Owner_Id INT UNIQUE NOT NULL, 
    FOREIGN KEY (Owner_Id) REFERENCES USER(Id)
);



INSERT INTO CONTACT_INFO (Phone, Owner_Id) VALUES ("2222-333",1);
INSERT INTO CONTACT_INFO (Phone, Owner_Id) VALUES ("5555-111",2);
INSERT INTO CONTACT_INFO (Phone, Owner_Id) VALUES ("4444-888",3);
